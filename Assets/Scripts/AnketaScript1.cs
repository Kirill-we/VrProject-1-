using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System;
public class AnketaScript1 : MonoBehaviour
{
    public TMP_InputField nameInputField;
    public TMP_Text nameTmpText;
    public void OnbuttonUserName() {
          nameTmpText.text = nameInputField.text;
    }
    // public void OnbuttonUserAge() {
    //     string ageString = ageInputField.text;
    //     int ageInt = int.Parse(ageString);
    // }
}
