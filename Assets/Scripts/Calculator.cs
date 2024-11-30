using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System.Runtime.CompilerServices;
using System;
using UnityEngine.UI;

public class Calculator : MonoBehaviour {
    [SerializeField] private  TMP_InputField InputField1;
    [SerializeField] private  TMP_InputField InputField2;
    [SerializeField] private TMP_Text outputText;
    public void OnbuttonMinus() {
        float value1 = ReadIntFromInputField(InputField1);
        float value2 = ReadIntFromInputField(InputField2);
        outputText.text = (value1 - value2) . ToString();
    }

    public void OnButtonPlus() {
        float value1 = ReadIntFromInputField(InputField1);
        float value2 = ReadIntFromInputField(InputField2);
        outputText.text = (value1 + value2) . ToString();
    }
    public void OnButtonmultiplication() {
        float value1 = ReadIntFromInputField(InputField1);
        float value2 = ReadIntFromInputField(InputField2);
        outputText.text = (value1 * value2) . ToString();
    }
    public void onButtonDev() {
        float value1 = ReadIntFromInputField(InputField1);
        float value2 = ReadIntFromInputField(InputField2);
        if (value2 == 0) {
            outputText.text = "На ноль делить нельзя";
        } else {
            outputText.text = (value1 / value2).ToString();
        }
    }

    private float ReadIntFromInputField (TMP_InputField inputField) {
        string str = inputField.text;
        if (str!= null && str.Length > 0) {
            if (float.TryParse(str, out float IntValue)) {
                return IntValue;
            }
        }
        return 0;
    }
}