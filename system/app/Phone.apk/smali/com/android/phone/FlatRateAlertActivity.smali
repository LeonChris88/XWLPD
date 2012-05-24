.class public Lcom/android/phone/FlatRateAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "FlatRateAlertActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field protected static mCheckBox:Landroid/widget/CheckBox;

.field protected static mRadioGroup:Landroid/widget/RadioGroup;


# instance fields
.field private mContext:Landroid/content/Context;

.field private radioOption1:Landroid/widget/RadioButton;

.field private salesCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->radioOption1:Landroid/widget/RadioButton;

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->salesCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/FlatRateAlertActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/FlatRateAlertActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->salesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/FlatRateAlertActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->radioOption1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/phone/FlatRateAlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04001e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, "XEC"

    iget-object v4, p0, Lcom/android/phone/FlatRateAlertActivity;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0e0485

    invoke-virtual {p0, v3}, Lcom/android/phone/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0900a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    sput-object v3, Lcom/android/phone/FlatRateAlertActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0900a4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/phone/FlatRateAlertActivity;->radioOption1:Landroid/widget/RadioButton;

    sget-object v3, Lcom/android/phone/FlatRateAlertActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v6}, Landroid/widget/RadioGroup;->setVisibility(I)V

    sget-object v3, Lcom/android/phone/FlatRateAlertActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    :goto_0
    const v3, 0x7f0900a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Lcom/android/phone/FlatRateAlertActivity$1;

    invoke-direct {v3, p0}, Lcom/android/phone/FlatRateAlertActivity$1;-><init>(Lcom/android/phone/FlatRateAlertActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2

    :cond_0
    const v3, 0x7f0e0481

    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0e0482

    invoke-virtual {p0, v5}, Lcom/android/phone/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/FlatRateAlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0900a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    sput-object v3, Lcom/android/phone/FlatRateAlertActivity;->mCheckBox:Landroid/widget/CheckBox;

    sget-object v3, Lcom/android/phone/FlatRateAlertActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    sget-object v3, Lcom/android/phone/FlatRateAlertActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    const-string v0, "FLatRateAlertActivity"

    const-string v1, "onCheckedChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/FlatRateAlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FlatRateAlertActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    const-string v1, "XEC"

    iget-object v2, p0, Lcom/android/phone/FlatRateAlertActivity;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0e0484

    invoke-virtual {p0, v1}, Lcom/android/phone/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    invoke-direct {p0}, Lcom/android/phone/FlatRateAlertActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/phone/FlatRateAlertActivity;->setupAlert()V

    return-void

    :cond_0
    const v1, 0x7f0e0480

    invoke-virtual {p0, v1}, Lcom/android/phone/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method
