.class Lcom/android/calendar/DatePickerWithLunar;
.super Landroid/widget/DatePicker;
.source "DatePickerWithLunar.java"


# instance fields
.field private mIsLeapMonth:Z

.field private mSetLunar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/DatePickerWithLunar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/DatePickerWithLunar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mSetLunar:Z

    iput-boolean v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mIsLeapMonth:Z

    return-void
.end method
