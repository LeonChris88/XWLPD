.class public Lcom/android/phone/SipCallOptionHandler;
.super Landroid/app/Activity;
.source "SipCallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private mCallOption:Ljava/lang/String;

.field private mDialogs:[Landroid/app/Dialog;

.field private mIntent:Landroid/content/Intent;

.field private mMakePrimary:Z

.field private mNumber:Ljava/lang/String;

.field private mOutgoingSipProfile:Landroid/net/sip/SipProfile;

.field private mProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mUnsetPriamryHint:Landroid/widget/TextView;

.field private mUseSipPhone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/SipCallOptionHandler;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/app/Dialog;

    iput-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    iput-boolean v1, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    iput-boolean v1, p0, Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/SipCallOptionHandler;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/SipCallOptionHandler;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/SipCallOptionHandler;Landroid/net/sip/SipProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/SipCallOptionHandler;->createSipPhoneIfNeeded(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/SipCallOptionHandler;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/SipCallOptionHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/SipCallOptionHandler;)Lcom/android/phone/sip/SipSharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/SipCallOptionHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/SipCallOptionHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->getPrimarySipPhone()V

    return-void
.end method

.method private addMakeDefaultCheckBox(Landroid/app/Dialog;)V
    .locals 5

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/phone/SipCallOptionHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x1090026

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x102025c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v3, 0x7f0e0221

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(I)V

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v3, 0x102025d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const v4, 0x7f0e0222

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method private createSipPhoneIfNeeded(Landroid/net/sip/SipProfile;)V
    .locals 6

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;)V

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "SipCallOptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot open sip profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v3, "SipCallOptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot make sipphone profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/net/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private getPrimaryFromExistingProfiles(Ljava/lang/String;)Landroid/net/sip/SipProfile;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v3}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    if-nez v3, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method private getPrimarySipPhone()V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->getPrimaryFromExistingProfiles(Ljava/lang/String;)Landroid/net/sip/SipProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/android/phone/SipCallOptionHandler$3;

    invoke-direct {v1, p0}, Lcom/android/phone/SipCallOptionHandler$3;-><init>(Lcom/android/phone/SipCallOptionHandler;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/SipCallOptionHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto :goto_0
.end method

.method private getProfileNameArray()[Ljava/lang/CharSequence;
    .locals 6

    iget-object v5, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/sip/SipProfile;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private isNetworkConnected()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/phone/SipCallOptionHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eq v4, v3, :cond_2

    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private setResultAndFinish()V
    .locals 1

    new-instance v0, Lcom/android/phone/SipCallOptionHandler$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SipCallOptionHandler$1;-><init>(Lcom/android/phone/SipCallOptionHandler;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startGetPrimarySipPhoneThread()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/SipCallOptionHandler$2;

    invoke-direct {v1, p0}, Lcom/android/phone/SipCallOptionHandler$2;-><init>(Lcom/android/phone/SipCallOptionHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iput-boolean p2, p0, Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    sget-boolean v1, Lcom/android/phone/SipCallOptionHandler;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "SipCallOptionHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User pick phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const v1, 0x7f0e0224

    invoke-virtual {p0, v1}, Lcom/android/phone/SipCallOptionHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->startGetPrimarySipPhoneThread()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    aget-object v0, v0, v4

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/sip/SipProfile;

    iput-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_0

    :cond_6
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/sip/SipSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->startActivity(Landroid/content/Intent;)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "com.android.phone.SIP_SELECT_PHONE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "SipCallOptionHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate: got intent action \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "com.android.phone.SIP_SELECT_PHONE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v8, "android.phone.extra.NEW_CALL_INTENT"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v7

    sget-boolean v8, Lcom/android/phone/SipCallOptionHandler;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "SipCallOptionHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "voipSupported: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v8, Lcom/android/phone/sip/SipProfileDb;

    invoke-direct {v8, p0}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    new-instance v8, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v8, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v8}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    sget-boolean v8, Lcom/android/phone/SipCallOptionHandler;->DBG:Z

    if-eqz v8, :cond_3

    const-string v8, "SipCallOptionHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Call option: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-static {v8, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mNumber:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v8}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOn()Z

    move-result v2

    const-string v8, "tel"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "sip"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    move v3, v10

    :goto_1
    const-string v8, "tel"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mNumber:Ljava/lang/String;

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    move v4, v10

    :goto_2
    if-nez v3, :cond_7

    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto/16 :goto_0

    :cond_5
    move v3, v9

    goto :goto_1

    :cond_6
    move v4, v9

    goto :goto_2

    :cond_7
    if-nez v7, :cond_9

    if-nez v4, :cond_8

    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto/16 :goto_0

    :cond_9
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->isNetworkConnected()Z

    move-result v8

    if-nez v8, :cond_a

    if-nez v4, :cond_d

    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    const-string v11, "SIP_ASK_ME_EACH_TIME"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v4, :cond_b

    if-eqz v2, :cond_b

    invoke-virtual {p0, v9}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    const-string v11, "SIP_ADDRESS_ONLY"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    if-nez v4, :cond_d

    :cond_c
    iput-boolean v10, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    :cond_d
    iget-boolean v8, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v8}, Lcom/android/phone/sip/SipProfileDb;->getProfilesCount()I

    move-result v8

    if-gtz v8, :cond_e

    if-nez v4, :cond_f

    :cond_e
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->startGetPrimarySipPhoneThread()V

    goto/16 :goto_0

    :cond_f
    iput-boolean v9, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    :cond_10
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const v7, 0x104000a

    const/4 v6, -0x1

    const/high16 v5, 0x104

    const v4, 0x1080027

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    aput-object v0, v2, p1

    :cond_0
    return-object v0

    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e021f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080004

    invoke-virtual {v2, v3, v6, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0220

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->getProfileNameArray()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3, v6, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->addMakeDefaultCheckBox(Landroid/app/Dialog;)V

    goto :goto_0

    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0225

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0226

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0227

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_1

    const v2, 0x7f0e0260

    :goto_1
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz v1, :cond_2

    const v2, 0x7f0e0262

    :goto_2
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const v2, 0x7f0e025f

    goto :goto_1

    :cond_2
    const v2, 0x7f0e0261

    goto :goto_2

    :pswitch_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0263

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "SipCallOptionHandler"

    const-string v6, "onDismiss isShowing"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_0
.end method
