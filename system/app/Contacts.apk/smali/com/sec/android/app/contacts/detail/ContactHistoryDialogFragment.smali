.class public Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;
.super Landroid/app/DialogFragment;
.source "ContactHistoryDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private mDialogCheckbox:Landroid/widget/CheckBox;

.field private mShowNeverAgain:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mShowNeverAgain:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mDialogCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mShowNeverAgain:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mShowNeverAgain:Z

    return p1
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f04004a

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x1020001

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mDialogCheckbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mDialogCheckbox:Landroid/widget/CheckBox;

    new-instance v5, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mDialogCheckbox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mDialogCheckbox:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    const v4, 0x7f0d0116

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0268

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0a0269

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$3;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    new-instance v6, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
