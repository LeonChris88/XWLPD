.class Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountSetupSncRestoreAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfiguredAccountsAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p1, p2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->access$002(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;Ljava/util/List;)Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;

    invoke-static {v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;

    invoke-static {v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;->getItem(I)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040026

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ViewHolder;

    invoke-direct {v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ViewHolder;-><init>()V

    const v2, 0x7f100009

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ViewHolder;->userNameView:Landroid/widget/TextView;

    const v2, 0x7f1000ad

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ViewHolder;->accountNameView:Landroid/widget/TextView;

    const v2, 0x7f100002

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ViewHolder;->accountIconView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ViewHolder;->userNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ViewHolder;->userNameView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v3, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ViewHolder;->accountNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/esp/ServiceProvider;->getProviderImageFromSnc(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ViewHolder;->accountIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ViewHolder;->serviceList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ViewHolder;->endpointName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ViewHolder;->userName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ViewHolder;

    goto/16 :goto_0
.end method
