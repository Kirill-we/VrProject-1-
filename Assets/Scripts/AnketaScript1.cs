using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System;

public class AnketaScript1 : MonoBehaviour
{
    public TMP_InputField nameInputField;
    public TMP_Text nameTmpText;
    
   public TMP_InputField ageInputField;
    public TMP_Text birthDayYearTmpText;
    public void OnButtonUserName() {
        Debug.Log("AnketaScript::OnButtonUserName(); -- nameInputField.text:" + nameInputField.text);
        nameTmpText.text = nameInputField.text;
    }
    public void OnButtonUserAge() {
        Debug.Log("AnketaScript::OnButtonUserAge(); -- ageInputField.text:" + ageInputField.text);
        string ageString = ageInputField.text;
        if (ageString != null && ageString.Length > 0) {
            if (int.TryParse(ageString, out int ageInt)) {
                DateTime dateTime = DateTime.Now;
                dateTime = dateTime.AddYears(-ageInt);
                birthDayYearTmpText.text = dateTime.ToString("yyyy");
            } else {
                birthDayYearTmpText.text = "Нужно только число!";
            }
        } else {
            birthDayYearTmpText.text = "Не должно быть пустой!";
        }

       
        
    }
}
