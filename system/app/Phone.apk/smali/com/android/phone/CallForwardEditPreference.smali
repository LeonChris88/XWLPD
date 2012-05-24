.class public Lcom/android/phone/CallForwardEditPreference;
.super Lcom/android/phone/EditPhoneNumberPreference;
.source "CallForwardEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallForwardEditPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field private bChangeNum:Z

.field callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

.field editTextWatcher:Landroid/text/TextWatcher;

.field private mAddModifyCount:I

.field private mAddStartIndex:I

.field private mBeforeText:Ljava/lang/String;

.field private mButtonClicked:I

.field private mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

.field private mNumber:Ljava/lang/String;

.field private mServiceClass:I

.field private mSummaryOnTemplate:Ljava/lang/CharSequence;

.field private mVMPhoneNumber:Ljava/lang/String;

.field phone:Lcom/android/internal/telephony/Phone;

.field reason:I

.field tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%s"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallForwardEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/android/phone/CallForwardEditPreference$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CallForwardEditPreference$MyHandler;-><init>(Lcom/android/phone/CallForwardEditPreference;Lcom/android/phone/CallForwardEditPreference$1;)V

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    new-instance v1, Lcom/android/phone/CallForwardEditPreference$1;

    invoke-direct {v1, p0}, Lcom/android/phone/CallForwardEditPreference$1;-><init>(Lcom/android/phone/CallForwardEditPreference;)V

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->editTextWatcher:Landroid/text/TextWatcher;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mSummaryOnTemplate:Ljava/lang/CharSequence;

    sget-object v1, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    const v2, 0x7f10000d

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallForwardEditPreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mVMPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallForwardEditPreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mBeforeText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/CallForwardEditPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->mBeforeText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/CallForwardEditPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/CallForwardEditPreference;->bChangeNum:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/CallForwardEditPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/CallForwardEditPreference;->bChangeNum:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/CallForwardEditPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mAddStartIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/CallForwardEditPreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/CallForwardEditPreference;->mAddStartIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/CallForwardEditPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mAddModifyCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/CallForwardEditPreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/CallForwardEditPreference;->mAddModifyCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/CallForwardEditPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallForwardEditPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallForwardEditPreference;->updateSummaryText()V

    return-void
.end method

.method private updateSummaryText()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getRawPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget v3, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e007d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/phone/CallForwardEditPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e02c8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e007e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 2

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallForwardEditPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V

    const-string v0, "default_vm_in_callforwarding"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallForwardEditPreference;->bChangeNum:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mVMPhoneNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mVMPhoneNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mVMPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->editTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;->onClick(Landroid/content/DialogInterface;I)V

    iput p2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 10

    const/4 v0, 0x3

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v2, "default_vm_in_callforwarding"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    if-eq v2, v6, :cond_0

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    const/4 v5, -0x3

    if-ne v2, v5, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference;->mVMPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference;->mVMPhoneNumber:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreference;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->onDialogClosed(Z)V

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    const/4 v5, -0x2

    if-eq v2, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    if-ne v2, v6, :cond_4

    :cond_2
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_5

    move v4, v8

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v0, v9, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v1, v8

    goto :goto_0

    :cond_5
    const/16 v4, 0x14

    goto :goto_1

    :cond_6
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/phone/CallForwardEditPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    if-ne v0, v9, :cond_7

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v5, v9, v1, v9}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    :goto_3
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v8}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget v5, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    iget-object v6, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v6, v9, v1, v9}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    goto :goto_3
.end method
