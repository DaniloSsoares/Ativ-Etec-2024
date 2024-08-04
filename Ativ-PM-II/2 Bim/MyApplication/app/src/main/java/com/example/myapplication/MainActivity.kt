package com.example.myapplication


import com.example.myapplication.ui.theme.MyApplicationTheme


import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import android.os.Bundle
import androidx.compose.foundation.layout.fillMaxSize


class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MyApplicationTheme  {
                // A surface container using the 'background' color from the theme
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    App()
                }
            }
        }
    }
}

@Composable
fun App(){
    Column(
        Modifier
            .background(Color.White)) {
        Row(
            Modifier
                .background(Color.White)
                .fillMaxWidth(),
            Arrangement.Center    ){
            Text(text = "App Aula",
                fontFamily = FontFamily.SansSerif,
                fontWeight = FontWeight.Bold,
                fontSize = 30.sp)    }
        Row(Modifier.padding(10.dp)) {    }

        Row (
            Modifier
                .background(Color.Gray)
                .fillMaxWidth(),
            Arrangement.SpaceBetween    )    {
            Column (                   ){
                Text(text = "Danilo Santos Soares",
                    fontFamily = FontFamily.Cursive)              }
            Column (){           Button(onClick = { /*TODO*/ }) {
                Text(text = "Editar", fontFamily = FontFamily.Serif)
            }
            }
            Column (){
                Button(onClick = { /*TODO*/ }) {
                    Text(text = "Excluir", fontFamily = FontFamily.Serif)
                }
            }
        }
        Row(Modifier.padding(10.dp)) {    }
        Row (
            Modifier
                .background(Color.Gray)
                .fillMaxWidth(),        Arrangement.SpaceBetween    )
        {
            Column {
                Text(text = "Danilo Santos Soares", fontFamily = FontFamily.Cursive)
            }
            Column {
                Button(onClick = { /*TODO*/ })
                {
                    Text(text = "Editar", fontFamily = FontFamily.Serif)
                }
            }
            Column {
                Button(onClick = { /*TODO*/ }) {
                    Text(text = "Excluir", fontFamily = FontFamily.Serif)
                }
            }
        }
    }
}
@Composable
@Preview
fun  AppPreview(){
    MyApplicationTheme  {

        Surface(
            modifier = Modifier.fillMaxSize(),
            color = MaterialTheme.colorScheme.background        )
        {            App()
        }
    }
}