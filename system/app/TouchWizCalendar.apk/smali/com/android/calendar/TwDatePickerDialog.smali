.class public Lcom/android/calendar/TwDatePickerDialog;
.super Landroid/app/DatePickerDialog;
.source "TwDatePickerDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 3

    invoke-direct/range {p0 .. p5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p0}, Lcom/android/calendar/TwDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    const-wide v1, -0x1f3a46eb740L

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMinDate(J)V

    invoke-virtual {p0}, Lcom/android/calendar/TwDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    const-wide v1, 0x1ec48fc3998L

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    invoke-virtual {p0, p3, p4, p5}, Lcom/android/calendar/TwDatePickerDialog;->updateDate(III)V

    return-void
.end method
