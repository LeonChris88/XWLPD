.class public Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;
.super Landroid/app/DialogFragment;
.source "MergeWithGoogleDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$SelectGoogleAccountListener;
    }
.end annotation


# static fields
.field public static final IS_MERGE_AVAILABLE_PROJECTION:[Ljava/lang/String;

.field public static final PHONE_ACCOUNT_CONTACTS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "isPhoneAccountAvailable"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->IS_MERGE_AVAILABLE_PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->PHONE_ACCOUNT_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->createAccountSelectionDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mergeWithGoogle(Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->showResultToast(Ljava/lang/String;)V

    return-void
.end method

.method private createAccountSelectionDialog()V
    .locals 7

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManager;->getGoogleAccountsWithDataSet()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mergeWithGoogle(Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->showResultToast(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-le v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$SelectGoogleAccountListener;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$SelectGoogleAccountListener;-><init>(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;)V

    const v5, 0x7f0a0208

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/app/contacts/interaction/SelectGoogleAccountDialogFragment;->show(Landroid/app/FragmentManager;Lcom/sec/android/app/contacts/interaction/SelectGoogleAccountDialogFragment$Listener;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v3}, Lcom/android/contacts/util/AccountPromptUtils;->launchAccountPrompt(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private mergeWithGoogle(Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->PHONE_ACCOUNT_CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_type = \'vnd.sec.contact.phone\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    if-nez v6, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a0205

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "content://com.android.contacts/account_updates"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->IS_MERGE_AVAILABLE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v7, 0x1

    :goto_3
    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    if-nez v7, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a0206

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    const/4 v0, -0x1

    if-eq v10, v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a0204

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a0207

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;-><init>()V

    const-string v1, "MergeWithGoogleDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showResultToast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    new-instance v1, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;)V

    new-instance v0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0210

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0203

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
