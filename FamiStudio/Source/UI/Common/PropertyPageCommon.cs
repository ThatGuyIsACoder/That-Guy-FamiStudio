﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamiStudio
{
    public partial class PropertyPage
    {
        public delegate void PropertyChangedDelegate(PropertyPage props, int propIdx, int rowIdx, int colIdx, object value);
        public event PropertyChangedDelegate PropertyChanged;
        public delegate void PropertyWantsCloseDelegate(int idx);
        public event PropertyWantsCloseDelegate PropertyWantsClose;
        public delegate void PropertyClickedDelegate(PropertyPage props, ClickType click, int propIdx, int rowIdx, int colIdx);
        public event PropertyClickedDelegate PropertyClicked;

        private object userData;
        private int advancedPropertyStart = -1;
        private bool showWarnings = false;

        public object PropertiesUserData { get => userData; set => userData = value; }
        public bool HasAdvancedProperties { get => advancedPropertyStart > 0; }
        public bool ShowWarnings { get => showWarnings; set => showWarnings = value; }
    }

    public enum PropertyType
    {
        String,
        ColoredString,
        NumericUpDown,
        DomainUpDown,
        Slider,
        CheckBox,
        DropDownList,
        CheckBoxList,
        MultiColumnList,
        ColorPicker,
        Label,
        Button,
        MultilineString,
        ProgressBar,
        Radio
    };

    public enum CommentType
    {
        Good,
        Warning,
        Error
    };

    public enum ColumnType
    {
        CheckBox,
        Label,
        Button,
        DropDown,
        Slider
    };

    public enum ClickType
    {
        Left,
        Right,
        Double,
        Button
    };

    public class ColumnDesc
    {
        public string Name;
        public bool Enabled = true;
        public float Width = 0.0f;
        public ColumnType Type = ColumnType.Label;
        public string[] DropDownValues;
        public string StringFormat = "{0}";

        public ColumnDesc(string name, float width, ColumnType type = ColumnType.Label, string format = "{0}")
        {
            Debug.Assert(type != ColumnType.CheckBox || width == 0.0f);

            Name = name;
            Type = type;
            StringFormat = type == ColumnType.CheckBox ? "" : format;
            Width = type == ColumnType.CheckBox ? 0.0f : width;
        }

        public ColumnDesc(string name, float width, string[] values)
        {
            Name = name;
            Type = ColumnType.DropDown;
            DropDownValues = values;
            Width = width;
        }

        public Type GetPropertyType()
        {
            switch (this.Type)
            {
                case ColumnType.Slider:
                    return typeof(int);
                case ColumnType.CheckBox: 
                    return typeof(bool);
                default: 
                    return typeof(string);
            }
        }
    };
}