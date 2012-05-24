.class public Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountSetupSncAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;Landroid/content/Context;[Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 1

    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ImageAdapter;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ImageAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ImageAdapter;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040021

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ViewHolder;

    invoke-direct {v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ViewHolder;-><init>()V

    const v3, 0x7f1000ad

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ViewHolder;->accountNameView:Landroid/widget/TextView;

    const v3, 0x7f100002

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ViewHolder;->accountIconView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->access$000()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;->getmType()I

    move-result v3

    invoke-static {v3}, Lcom/android/email/esp/ServiceProvider;->getProviderCheckImageResourceId(I)I

    move-result v2

    iget-object v3, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ViewHolder;->accountIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ViewHolder;->accountNameView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v3, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ViewHolder;->accountNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ViewHolder;

    goto :goto_0
.end method
