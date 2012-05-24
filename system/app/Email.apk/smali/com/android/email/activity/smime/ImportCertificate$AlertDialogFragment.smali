.class public Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "ImportCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/smime/ImportCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertDialogFragment"
.end annotation


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getViewText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->hideError()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;I)Landroid/widget/TextView;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->showError(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->onDismissDialog(I)V

    return-void
.end method

.method private getViewText(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hide(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideError()V
    .locals 1

    const v0, 0x7f10026d

    invoke-direct {p0, v0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->hide(I)V

    return-void
.end method

.method public static newInstance(I)Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;
    .locals 3

    new-instance v1, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    invoke-direct {v1}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ID"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private onDismissDialog(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/activity/smime/ImportCertificate;->access$800(Lcom/android/email/activity/smime/ImportCertificate;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move v1, p1

    const v3, 0x7f10026e

    invoke-direct {p0, v3}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getViewText(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f10026f

    invoke-direct {p0, v3}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getViewText(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;-><init>(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/activity/smime/ImportCertificate;->access$800(Lcom/android/email/activity/smime/ImportCertificate;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$5;

    invoke-direct {v4, p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$5;-><init>(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/activity/smime/ImportCertificate;->access$1600(Lcom/android/email/activity/smime/ImportCertificate;)V

    goto :goto_0
.end method

.method private showError(I)Landroid/widget/TextView;
    .locals 3

    iget-object v1, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->mView:Landroid/view/View;

    const v2, 0x7f10026d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method getOwner()Lcom/android/email/activity/smime/ImportCertificate;
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/smime/ImportCertificate;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/smime/ImportCertificate;

    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "ID"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f040099

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->mView:Landroid/view/View;

    const-string v5, ""

    iget-object v6, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->mView:Landroid/view/View;

    const v7, 0x7f10026e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->mView:Landroid/view/View;

    const v7, 0x7f10026f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v6

    new-instance v7, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Lcom/android/email/activity/smime/ImportCertificate;->access$602(Lcom/android/email/activity/smime/ImportCertificate;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/activity/smime/ImportCertificate;->access$600(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/app/ProgressDialog;

    move-result-object v6

    const v7, 0x7f0804c7

    invoke-virtual {p0, v7}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/activity/smime/ImportCertificate;->access$600(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/activity/smime/ImportCertificate;->access$600(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/app/ProgressDialog;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/activity/smime/ImportCertificate;->access$600(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/app/ProgressDialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-ne v2, v9, :cond_2

    const v6, 0x7f0804c3

    invoke-virtual {p0, v6}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_1
    :goto_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$2;

    invoke-direct {v8, p0, v2}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$2;-><init>(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;I)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    new-instance v8, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$1;

    invoke-direct {v8, p0, v2}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$1;-><init>(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;I)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v6, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$3;

    invoke-direct {v6, p0, v2, v4, v1}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$3;-><init>(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;ILandroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    const v6, 0x7f0804c5

    invoke-virtual {p0, v6}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/android/email/activity/smime/ImportCertificate;->access$700(Lcom/android/email/activity/smime/ImportCertificate;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1
.end method
