﻿using CarsShowroom.Classes;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CarsShowroom
{
    public partial class MainPage : Page
    {
        private List<Classes.Employee> Items;
        private List<Classes.Position> Positions;
        public MainPage()
        {
            InitializeComponent();
            Get();
            GetPositionBox();
            ((MainWindow)System.Windows.Application.Current.MainWindow).exitIcon.Visibility = Visibility.Visible;
        }

        private void Get()
        {
            HttpWebRequest WebReq = (HttpWebRequest)WebRequest.Create(string.Format("https://localhost:44387/api/Employees"));

            WebReq.Method = "GET";

            HttpWebResponse WebResp = (HttpWebResponse)WebReq.GetResponse();


            string jsonString;
            using (Stream stream = WebResp.GetResponseStream())   //modified from your code since the using statement disposes the stream automatically when done
            {
                StreamReader reader = new StreamReader(stream, System.Text.Encoding.UTF8);
                jsonString = reader.ReadToEnd();
            }

            Items = JsonConvert.DeserializeObject<List<Classes.Employee>>(jsonString);
            dataGrid.ItemsSource = Items;
            foreach (var item in Items)
            {
                item.PropertyChanged += delegate
                {
                    PUT(item);
                };
            }

            roleBox.SelectedIndex = 0;
        }

        private void Delete(object sender, RoutedEventArgs e)
        {
            try
            {
                int id = Items[dataGrid.SelectedIndex].EmployeeId;

                HttpWebRequest WebReq = (HttpWebRequest)WebRequest.Create(string.Format("https://localhost:44387/api/Employees/" + id));
                WebReq.Method = "DELETE";
                HttpWebResponse WebResp = (HttpWebResponse)WebReq.GetResponse();

                Get();
            }
            catch
            {

            }
        }

        private void GetPositionBox()
        {
            HttpWebRequest WebReq = (HttpWebRequest)WebRequest.Create(string.Format("https://localhost:44387/api/Positions"));

            WebReq.Method = "GET";

            HttpWebResponse WebResp = (HttpWebResponse)WebReq.GetResponse();


            string jsonString;
            using (Stream stream = WebResp.GetResponseStream())   //modified from your code since the using statement disposes the stream automatically when done
            {
                StreamReader reader = new StreamReader(stream, System.Text.Encoding.UTF8);
                jsonString = reader.ReadToEnd();
            }

            Positions = JsonConvert.DeserializeObject<List<Classes.Position>>(jsonString);

            foreach (var item in Positions)
            {
                positionBox.Items.Add(item.Name);
            }
            positionBox.SelectedIndex = 0;

            //items roleBox
            roleBox.Items.Add("Администратор");
            roleBox.Items.Add("Менеджер");
            roleBox.Items.Add("Бухгалтер");
            roleBox.Items.Add("Механик");
            roleBox.Items.Add("Кладовщик");
        }

        private void PUT(Employee employee)
        {
            try
            {
                int id = Items[dataGrid.SelectedIndex].EmployeeId;


                HttpWebRequest WebReq = (HttpWebRequest)WebRequest.Create(string.Format("https://localhost:44387/api/Employees/" + id));
                WebReq.ContentType = "application/json; charset=utf-8";
                WebReq.Accept = "application/json; charset=utf-8";
                WebReq.Method = "PUT";

                using (var streamWriter = new StreamWriter(WebReq.GetRequestStream()))
                {
                    string json = JsonConvert.SerializeObject(employee);
                    streamWriter.Write(json);
                }

                var httpResponse = (HttpWebResponse)WebReq.GetResponse();
                using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
                {
                    var result = streamReader.ReadToEnd();
                }
            }
            catch
            {

            }
        }

        private void Add_Click(object sender, RoutedEventArgs e)
        {
            if (Validation() == true)
            {
                HttpWebRequest WebReq = (HttpWebRequest)WebRequest.Create(string.Format("https://localhost:44387/api/Employees"));
                WebReq.ContentType = "application/json; charset=utf-8";
                WebReq.Accept = "application/json; charset=utf-8";
                WebReq.Method = "POST";

                string positionTxt = positionBox.SelectedItem.ToString();
                int idPosition = 0;
                foreach (var item in Positions)
                {
                    if (item.Name == positionTxt)
                    {
                        idPosition = item.PositionId;
                    }
                }

                string roleTxt = roleBox.SelectedItem.ToString();

                Employee employee = new Employee
                {
                    Surname = surnameTxt.Text,
                    Name = nameTxt.Text,
                    Patronymic = patronymicTxt.Text,
                    PositionId = idPosition,
                    Login = loginTxt.Text,
                    Password = MD5(passwordTxt.Text),
                    Inn = innTxt.Text,
                    PhoneNumber = phoneNumberTxt.Text,
                    Email = emailTxt.Text,
                    PassportSeries = passportSeriesTxt.Text,
                    PassportNumber = passportNumberTxt.Text,
                    Role = roleTxt
                };
                Items.Add(employee);



                using (var streamWriter = new StreamWriter(WebReq.GetRequestStream()))
                {
                    string json = JsonConvert.SerializeObject(employee);
                    streamWriter.Write(json);
                    streamWriter.Flush();
                    streamWriter.Close();
                }
                var httpResponse = (HttpWebResponse)WebReq.GetResponse();
                using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
                {
                    var result = streamReader.ReadToEnd();
                }

                Get();
            }
        }

        private string MD5(string password)
        {
            byte[] bytes = Encoding.Unicode.GetBytes(password);

            //создаем объект для получения средст шифрования  
            MD5CryptoServiceProvider CSP = new MD5CryptoServiceProvider();

            //вычисляем хеш-представление в байтах  
            byte[] byteHash = CSP.ComputeHash(bytes);

            string hash = string.Empty;

            //формируем одну цельную строку из массива  
            foreach (byte b in byteHash)
                hash += string.Format("{0:x2}", b);

            return hash;
        }

        private bool Validation()
        {
            bool valid = true;
            if (surnameTxt.Text == "" || nameTxt.Text == "" || patronymicTxt.Text == "" || loginTxt.Text == "" || passwordTxt.Text == "" || innTxt.Text == "" || phoneNumberTxt.Text == "" || emailTxt.Text == "" || passportSeriesTxt.Text == "" || passportNumberTxt.Text == "")
            {
                valid = false;
                ErrorWindow errorWindow = new ErrorWindow();
                errorWindow.errorText.Text = "Необходимо заполнить все поля";
                errorWindow.Show();
            }
            else if (!surnameTxt.Text.ToCharArray().All(x => Char.IsLetter(x)) || !nameTxt.Text.ToCharArray().All(x => Char.IsLetter(x)) || !patronymicTxt.Text.ToCharArray().All(x => Char.IsLetter(x)) || !innTxt.Text.ToCharArray().All(x => Char.IsDigit(x)) || !phoneNumberTxt.Text.ToCharArray().All(x => Char.IsDigit(x)) || !passportSeriesTxt.Text.ToCharArray().All(x => Char.IsDigit(x)) || !passportNumberTxt.Text.ToCharArray().All(x => Char.IsDigit(x)) || !isValid(emailTxt.Text))
            {
                valid = false;
                ErrorWindow errorWindow = new ErrorWindow();
                errorWindow.errorText.Text = "Данные заполнены неверно";
                errorWindow.Show();
            }

            return valid;
        }

        private bool isValid(string email)
        {
            string pattern = "[.\\-_a-z0-9]+@([a-z0-9][\\-a-z0-9]+\\.)+[a-z]{2,6}";
            Match isMatch = Regex.Match(email, pattern, RegexOptions.IgnoreCase);
            return isMatch.Success;
        }

        private void surnameCheck_Click(object sender, RoutedEventArgs e)
        {
            if (surnameCheck.IsChecked == false)
                dataGrid.Columns[0].Visibility = Visibility.Hidden;
            else
                dataGrid.Columns[0].Visibility = Visibility.Visible;
        }

        private void nameCheck_Click(object sender, RoutedEventArgs e)
        {
            if (nameCheck.IsChecked == false)
                dataGrid.Columns[1].Visibility = Visibility.Hidden;
            else
                dataGrid.Columns[1].Visibility = Visibility.Visible;
        }

        private void patronymicCheck_Click(object sender, RoutedEventArgs e)
        {
            if (patronymicCheck.IsChecked == false)
                dataGrid.Columns[2].Visibility = Visibility.Hidden;
            else
                dataGrid.Columns[2].Visibility = Visibility.Visible;
        }

        private void idPositionCheck_Click(object sender, RoutedEventArgs e)
        {
            if (idPositionCheck.IsChecked == false)
                dataGrid.Columns[3].Visibility = Visibility.Hidden;
            else
                dataGrid.Columns[3].Visibility = Visibility.Visible;
        }

        private void loginCheck_Click(object sender, RoutedEventArgs e)
        {
            if (loginCheck.IsChecked == false)
                dataGrid.Columns[4].Visibility = Visibility.Hidden;
            else
                dataGrid.Columns[4].Visibility = Visibility.Visible;
        }

        private void passwordCheck_Click(object sender, RoutedEventArgs e)
        {
            if (passwordCheck.IsChecked == false)
                dataGrid.Columns[5].Visibility = Visibility.Hidden;
            else
                dataGrid.Columns[5].Visibility = Visibility.Visible;
        }

        private void innCheck_Click(object sender, RoutedEventArgs e)
        {
            if (innCheck.IsChecked == false)
                dataGrid.Columns[6].Visibility = Visibility.Hidden;
            else
                dataGrid.Columns[6].Visibility = Visibility.Visible;
        }

        private void phoneNumberCheck_Click(object sender, RoutedEventArgs e)
        {
            if (phoneNumberCheck.IsChecked == false)
                dataGrid.Columns[7].Visibility = Visibility.Hidden;
            else
                dataGrid.Columns[7].Visibility = Visibility.Visible;
        }

        private void emailCheck_Click(object sender, RoutedEventArgs e)
        {
            if (emailCheck.IsChecked == false)
                dataGrid.Columns[8].Visibility = Visibility.Hidden;
            else
                dataGrid.Columns[8].Visibility = Visibility.Visible;
        }

        private void passportSeriesCheck_Click(object sender, RoutedEventArgs e)
        {
            if (passportSeriesCheck.IsChecked == false)
                dataGrid.Columns[9].Visibility = Visibility.Hidden;
            else
                dataGrid.Columns[9].Visibility = Visibility.Visible;
        }

        private void passportNumberCheck_Click(object sender, RoutedEventArgs e)
        {
            if (passportNumberCheck.IsChecked == false)
                dataGrid.Columns[10].Visibility = Visibility.Hidden;
            else
                dataGrid.Columns[10].Visibility = Visibility.Visible;
        }

        private void roleCheck_Click(object sender, RoutedEventArgs e)
        {
            if (roleCheck.IsChecked == false)
                dataGrid.Columns[11].Visibility = Visibility.Hidden;
            else
                dataGrid.Columns[11].Visibility = Visibility.Visible;
        }
    }
}
