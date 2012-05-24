.class Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;
.super Landroid/widget/BaseAdapter;
.source "UpgradeAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UpgradeAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountsAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/email/activity/UpgradeAccounts;


# direct methods
.method constructor <init>(Lcom/android/email/activity/UpgradeAccounts;)V
    .locals 1

    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/email/activity/UpgradeAccounts;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v2}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v2

    aget-object v0, v2, p2

    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->displayName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->errorMessage:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->errorReport:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget v2, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->progress:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->errorReport:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->errorReport:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    const v4, 0x7f0800d2

    invoke-virtual {v3, v4}, Lcom/android/email/activity/UpgradeAccounts;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->errorReport:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->progress:Landroid/widget/ProgressBar;

    iget v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->maxProgress:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->progress:Landroid/widget/ProgressBar;

    iget v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->progress:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->errorReport:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->errorReport:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->bindView(Landroid/view/View;I)V

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400a1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;-><init>(Lcom/android/email/activity/UpgradeAccounts$1;)V

    const v2, 0x7f100009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->displayName:Landroid/widget/TextView;

    const v2, 0x7f10004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const v2, 0x7f10026d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->errorReport:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method
