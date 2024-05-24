package com.example.kotlinexercise

import android.os.Bundle
import android.view.Gravity
import android.widget.Button
import android.widget.LinearLayout
import android.widget.TextView
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import com.example.kotlinexercise.ui.theme.KotlinExerciseTheme

class MainActivity : ComponentActivity() {
    private var count = 0
    private lateinit var countTextVIew : TextView
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val rootLayout = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.CENTER
            setPadding(16, 16, 16, 16)
        }
        countTextVIew = TextView(this).apply {
            textSize = 32f
            text = count.toString()
            setPadding(16, 0, 0, 0)
            gravity = android.view.Gravity.CENTER_HORIZONTAL
        }
        rootLayout.addView(countTextVIew)

        val incrementButton = Button(this).apply {
            text = "Increment"
            setOnClickListener {
                count++
                updateCountText()
            }
        }
        rootLayout.addView(incrementButton)

        val decrementButton = Button(this).apply {
            text = "Decrement"
            setOnClickListener {
                count--
                updateCountText()
            }
        }
        rootLayout.addView(decrementButton)

        val resetButton = Button(this).apply {
            text = "Reset"
            setOnClickListener {
                count = 0
                updateCountText()
            }
        }
        rootLayout.addView(resetButton)
        setContentView(rootLayout)
    }
        private fun updateCountText(){
            countTextVIew.text = count.toString()

        }
}

