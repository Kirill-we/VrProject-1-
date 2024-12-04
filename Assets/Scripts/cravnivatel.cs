using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class cravnivatel : MonoBehaviour
{
    [SerializeField] private  TMP_InputField InputField1;
    [SerializeField] private  TMP_InputField InputField2;
    [SerializeField] private TMP_Text outputText;

    public void OnButtonClick() {
        int value1 = ReadIntFromInputField(InputField1);
        int value2 = ReadIntFromInputField(InputField2);
        if (value1 > value2) {
            outputText.text = value1. ToString();
        }
        if (value2 > value1) {
            outputText.text = value2 .ToString();
        }
    }

      private int ReadIntFromInputField (TMP_InputField inputField) {
        string str = inputField.text;
        if (str!= null && str.Length > 0) {
            if (float.TryParse(str, out float IntValue)) {
                return (int)IntValue;
            }
        }
        return 0;
    }
}


