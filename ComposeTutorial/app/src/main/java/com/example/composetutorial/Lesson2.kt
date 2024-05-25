package com.example.composetutorial

import android.os.Bundle
import androidx.compose.material3.Text
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Column
import androidx.compose.runtime.Composable
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.Image

class  MainActivity : ComponentActivity(){
    override  fun onCreate(savedInstanceState: Bundle?){
        super.onCreate(savedInstanceState)
        setContent{
            MessageCard(Message("Android", "JetPack"))
        }
    }
}
data class Message(val author: String, val body: String)
@Composable
fun MessageCard(msg: Message){
    Row{
        Image(
            painter = painterResource(R.drawable.profile_picture),
            contentDescription = "Contact profile picture"
        )
        Column {
            Text(text = msg.author)
            Text(text = msg.body)
        }
    }

}
@Preview
@Composable
fun PreviewMessageCard(){
    MessageCard(
        msg = Message("Lexi", "Hey, take a look at Jetpack Compose, it's great!")
    )
}