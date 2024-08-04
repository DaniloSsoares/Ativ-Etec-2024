package com.example.firebase_21_06

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.runtime.Composable
import androidx.compose.runtime.ComposeCompilerApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.firebase_21_06.ui.theme.Firebase2106Theme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            Firebase2106Theme {
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


@Composable
fun App(){
    Column(
        Modifier
            .fillMaxWidth()
    ){
Row (
    Modifier
        .fillMaxWidth(),
    Arrangement.Center,
){
    Text(
        text="App Firebase Firestore",

    )
       }
        Row (
                Modifier
                .fillMaxWidth(),
            Arrangement.Center
        )
        {
        }
        Row(
            Modifier
                .fillMaxWidth()
                .padding(10.dp))
        {
            Column (Modifier
                .fillMaxWidth(0.3f)
                .padding(20.dp)){
                Text(text = "Nome:")
            }
            Column(
            ) {
             TextField(
                 value = "",
                 onValueChange ={},
                 label = {Text(text = "Nome")}
)
            }
        }

        Row(
            Modifier
                .fillMaxWidth()
                .padding(10.dp))
        {
            Column (Modifier
                .fillMaxWidth(0.3f)
                .padding(10.dp)){
                Text(text = "Telefone")
            }
            Column(
            ) {
                TextField(
                    value = "",
                    onValueChange ={},
                    label = {Text(text = "Telefone")}
                )
            }
        }
        Row( Modifier
            .fillMaxWidth(),
            Arrangement.Center) {
            Button(
                onClick = { /*TODO*/ }

            ) {
                Text(text = "Cadastrar")
            }
        }
    }
}
@Preview
@Composable
fun AppPreview(){

        Firebase2106Theme {
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
