.class public Lcom/android/email/activity/MailboxList;
.super Landroid/app/ListActivity;
.source "MailboxList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxList$MailboxListItem;,
        Lcom/android/email/activity/MailboxList$MailboxListAdapter;,
        Lcom/android/email/activity/MailboxList$ControllerResults;,
        Lcom/android/email/activity/MailboxList$MailboxListHandler;,
        Lcom/android/email/activity/MailboxList$LoadMailboxesTask;,
        Lcom/android/email/activity/MailboxList$LoadRootMailboxes;,
        Lcom/android/email/activity/MailboxList$LoadAllMailboxes;
    }
.end annotation


# static fields
.field private static mlistContextMenu:[Ljava/lang/String;


# instance fields
.field private createMailboxInRoot:Z

.field private isCreateFolder:Z

.field private isMoveCommand:Z

.field private isMoveScreen:Z

.field private isRefreshCommand:Z

.field private mAccountId:J

.field private mAllMailboxParentIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCancel:Landroid/widget/Button;

.field private mControllerCallback:Lcom/android/email/activity/MailboxList$ControllerResults;

.field private mDestMailboxId:J

.field private mDisplayName:Ljava/lang/String;

.field private mErrorBanner:Landroid/widget/TextView;

.field private mFolderName:Ljava/lang/String;

.field private mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mLoadAccountNameTask:Landroid/os/AsyncTask;

.field private mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

.field private mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

.field private mMailboxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MailboxList$MailboxListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMove:Landroid/widget/Button;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressIcon:Landroid/widget/ProgressBar;

.field private mSelectedContextMailboxId:J

.field private mSelectedMoveMailboxId:J

.field private mSelectedPosition:I

.field private managedCursors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private openCreated:Z

.field public updateUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MailboxList;->mlistContextMenu:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    iput v2, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MailboxList;->mSelectedMoveMailboxId:J

    iput-object v3, p0, Lcom/android/email/activity/MailboxList;->mFolderName:Ljava/lang/String;

    new-instance v0, Lcom/android/email/activity/MailboxList$MailboxListHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;-><init>(Lcom/android/email/activity/MailboxList;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;

    new-instance v0, Lcom/android/email/activity/MailboxList$ControllerResults;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/MailboxList$ControllerResults;-><init>(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mControllerCallback:Lcom/android/email/activity/MailboxList$ControllerResults;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mAllMailboxParentIdList:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/email/activity/MailboxList;->openCreated:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MailboxList;->isMoveCommand:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MailboxList;->isRefreshCommand:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MailboxList;->createMailboxInRoot:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MailboxList;->isMoveScreen:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MailboxList;->isCreateFolder:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->managedCursors:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/email/activity/MailboxList$11;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxList$11;-><init>(Lcom/android/email/activity/MailboxList;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/MailboxList;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MailboxList;->mlistContextMenu:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxList;->onContextMenuSelected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mAllMailboxParentIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MailboxList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxList;->createMailboxInRoot:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/email/activity/MailboxList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MailboxList;->createMailboxInRoot:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MailboxList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxList;->isMoveScreen:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MailboxList;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mSelectedMoveMailboxId:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MailboxList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxList;->openCreated:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/email/activity/MailboxList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MailboxList;->openCreated:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MailboxList;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MailboxList;->hasColumnId(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MailboxList;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxList;->closeFolderHierarchy(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/email/activity/MailboxList;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MailboxList;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mProgressIcon:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mErrorBanner:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MailboxList;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/email/activity/MailboxList;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MailboxList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxList;->isMoveCommand:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/email/activity/MailboxList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MailboxList;->isMoveCommand:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MailboxList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxList;->isRefreshCommand:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$LoadAllMailboxes;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$LoadMailboxesTask;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$LoadMailboxesTask;)Lcom/android/email/activity/MailboxList$LoadMailboxesTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MailboxList;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mDestMailboxId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/MailboxList;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MailboxList;->mDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/MailboxList;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/MailboxList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MailboxList;->isCreateFolder:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxList;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/activity/MailboxList;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;

    return-object v0
.end method

.method public static actionHandleAccount(Landroid/content/Context;J)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MailboxList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private actionHandleAccountForMove(Landroid/content/Context;J)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MailboxList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "MOVE_SCREEN"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "MOVE_MAILBOX_ID"

    iget-wide v2, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 v1, 0x1f40

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MailboxList;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private closeFolderHierarchy(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/android/email/activity/MailboxList$MailboxListItem;->access$1200(Lcom/android/email/activity/MailboxList$MailboxListItem;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/email/activity/MailboxList;->closeFolderHierarchy(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->setIsOpened(Z)V

    iget-object v2, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createContextMenu()Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/email/activity/MailboxList;->mlistContextMenu:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/email/activity/MailboxList;->mlistContextMenu:[Ljava/lang/String;

    new-instance v2, Lcom/android/email/activity/MailboxList$10;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MailboxList$10;-><init>(Lcom/android/email/activity/MailboxList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createMailbox()Landroid/app/Dialog;
    .locals 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08036d

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Force show SIP"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const v2, 0x7f10013a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v2, 0x104000a

    new-instance v3, Lcom/android/email/activity/MailboxList$4;

    invoke-direct {v3, p0, v0}, Lcom/android/email/activity/MailboxList$4;-><init>(Lcom/android/email/activity/MailboxList;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x104

    new-instance v2, Lcom/android/email/activity/MailboxList$5;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MailboxList$5;-><init>(Lcom/android/email/activity/MailboxList;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private deleteMailbox()Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0804f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804fa

    new-instance v2, Lcom/android/email/activity/MailboxList$9;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MailboxList$9;-><init>(Lcom/android/email/activity/MailboxList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804fb

    new-instance v2, Lcom/android/email/activity/MailboxList$8;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MailboxList$8;-><init>(Lcom/android/email/activity/MailboxList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private hasColumnId(J)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private hasServerId(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private onContextMenuSelected(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    const v1, 0x7f080069

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->onOpenMailbox()V

    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/android/email/activity/MailboxList;->isRefreshCommand:Z

    return-void

    :cond_1
    const v1, 0x7f080058

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/android/email/activity/MailboxList;->isMoveCommand:Z

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->showDialog(I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f08030f

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MailboxList;->showDialog(I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f080314

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v4, p0, Lcom/android/email/activity/MailboxList;->isMoveCommand:Z

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->showDialog(I)V

    goto :goto_0

    :cond_4
    const v1, 0x7f080315

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/android/email/activity/MailboxList;->isMoveCommand:Z

    iget-wide v1, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-direct {p0, p0, v1, v2}, Lcom/android/email/activity/MailboxList;->actionHandleAccountForMove(Landroid/content/Context;J)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    const v1, 0x7f080113

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onOpenMailbox()V
    .locals 4

    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    iget-wide v2, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/email/activity/MessageListXL;->actionOpenMailbox(Landroid/app/Activity;JJ)V

    return-void
.end method

.method private openFolderCascade(Ljava/lang/String;)V
    .locals 25

    const/4 v12, -0x1

    const/4 v13, -0x1

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v2, ""

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountKey=? AND type<64 AND type!=8 AND type!=4 AND type!=3 AND flagVisible=1 AND parentServerId=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    iget-object v4, v2, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v2

    const-string v7, "type,displayname ASC"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/activity/MailboxList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v14, :cond_6

    const/4 v8, 0x0

    const/4 v2, -0x1

    :try_start_0
    invoke-interface {v14, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/email/activity/MailboxList;->hasServerId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v2, ""

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountKey=? AND type<64 AND type!=8 AND flagVisible=1 AND serverId=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    iget-object v4, v2, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v2

    const-string v7, "type,displayname ASC"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/activity/MailboxList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    if-eqz v18, :cond_2

    const/16 v19, 0x0

    const/4 v2, -0x1

    :try_start_1
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/email/activity/MailboxList;->openFolderCascade(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v22, -0x1

    const/16 v17, -0x1

    const/16 v16, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_4

    if-nez v8, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    const/16 v3, 0xc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxType()I

    move-result v2

    if-ne v3, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_7

    move/from16 v22, v16

    :cond_4
    :goto_3
    const/4 v2, -0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_a

    move/from16 v12, v22

    :goto_4
    add-int/lit8 v13, v12, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->isOpened()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList$MailboxListItem;->setIsOpened(Z)V

    :cond_5
    const/4 v2, -0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x3

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x4

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getLevel()I

    move-result v2

    add-int/lit8 v9, v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    new-instance v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/email/activity/MailboxList$MailboxListItem;-><init>(Lcom/android/email/activity/MailboxList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_7
    move/from16 v17, v16

    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move/from16 v17, v16

    goto/16 :goto_3

    :cond_a
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_b

    add-int/lit8 v12, v17, 0x1

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v12

    goto/16 :goto_4
.end method

.method private renameMailbox()Landroid/app/Dialog;
    .locals 5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08036b

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Force show SIP"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const v1, 0x7f10013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-wide v3, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    :cond_0
    const v1, 0x104000a

    new-instance v3, Lcom/android/email/activity/MailboxList$6;

    invoke-direct {v3, p0, v0}, Lcom/android/email/activity/MailboxList$6;-><init>(Lcom/android/email/activity/MailboxList;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x104

    new-instance v1, Lcom/android/email/activity/MailboxList$7;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MailboxList$7;-><init>(Lcom/android/email/activity/MailboxList;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f080504

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iget-boolean v1, p0, Lcom/android/email/activity/MailboxList;->isCreateFolder:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v2, 0x2af8

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "k1001.kim"

    const-string v2, "progress in creating folder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isNetworkConnected()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Lcom/android/email/Email;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): info is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_1

    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): network is connected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): exception..."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): network is disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/16 v8, 0x8

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v4, 0x1f40

    if-ne p1, v4, :cond_4

    const/16 v4, 0x2328

    if-ne p2, v4, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mMove:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mCancel:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    const-string v4, "DES_MAILBOX_ID"

    const-wide/16 v5, -0x1

    invoke-virtual {p3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/email/activity/MailboxList;->mDestMailboxId:J

    const-string v4, "DES_MAILBOX_PARENT_ID"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/email/activity/MailboxList;->hasServerId(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v2}, Lcom/android/email/activity/MailboxList;->openFolderCascade(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v4}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getId()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    iput v3, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v4}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getId()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/email/activity/MailboxList;->mDestMailboxId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    :cond_2
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v4}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    const v4, 0x7f080503

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/email/activity/MailboxList;->showProgressDialog(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    iget-wide v6, p0, Lcom/android/email/activity/MailboxList;->mDestMailboxId:J

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/email/Controller;->moveFolder(JJ)V

    :cond_3
    :goto_2
    const/16 v4, 0x2710

    if-ne p2, v4, :cond_4

    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mMove:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mCancel:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v5, 0x1770

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    iget-wide v2, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-direct {v1, p0, v2, v3}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;-><init>(Lcom/android/email/activity/MailboxList;J)V

    iput-object v1, p0, Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iput-boolean v4, p0, Lcom/android/email/activity/MailboxList;->isMoveScreen:Z

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/MailboxList;->mDestMailboxId:J

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "DES_MAILBOX_ID"

    iget-wide v2, p0, Lcom/android/email/activity/MailboxList;->mDestMailboxId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "DES_MAILBOX_PARENT_ID"

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x2328

    invoke-virtual {p0, v1, v0}, Lcom/android/email/activity/MailboxList;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->finish()V

    goto :goto_0

    :pswitch_1
    iput-boolean v4, p0, Lcom/android/email/activity/MailboxList;->isMoveScreen:Z

    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100150
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v1, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/email/activity/MailboxList;->isRefreshCommand:Z

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->onOpenMailbox()V

    goto :goto_0

    :pswitch_2
    iput-boolean v3, p0, Lcom/android/email/activity/MailboxList;->isMoveCommand:Z

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->showDialog(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MailboxList;->showDialog(I)V

    goto :goto_0

    :pswitch_4
    iput-boolean v4, p0, Lcom/android/email/activity/MailboxList;->isMoveCommand:Z

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->showDialog(I)V

    goto :goto_0

    :pswitch_5
    iput-boolean v3, p0, Lcom/android/email/activity/MailboxList;->isMoveCommand:Z

    iget-wide v1, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-direct {p0, p0, v1, v2}, Lcom/android/email/activity/MailboxList;->actionHandleAccountForMove(Landroid/content/Context;J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1002cc
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v5, 0x4

    const-wide/16 v3, -0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040066

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x7

    const v2, 0x7f040062

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mListView:Landroid/widget/ListView;

    const v0, 0x7f100150

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mMove:Landroid/widget/Button;

    const v0, 0x7f100151

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mCancel:Landroid/widget/Button;

    const v0, 0x7f10014d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mProgressIcon:Landroid/widget/ProgressBar;

    const v0, 0x7f1000f5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mErrorBanner:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mMove:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MOVE_SCREEN"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxList;->isMoveScreen:Z

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxList;->isMoveScreen:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MOVE_MAILBOX_ID"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxList;->mSelectedMoveMailboxId:J

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mMove:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->unregisterForContextMenu(Landroid/view/View;)V

    :goto_0
    new-instance v0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    const v1, 0x7f040068

    iget-object v2, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;-><init>(Lcom/android/email/activity/MailboxList;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    iget-wide v2, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;-><init>(Lcom/android/email/activity/MailboxList;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;-><init>(Lcom/android/email/activity/MailboxList;J)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    new-instance v0, Lcom/android/email/activity/MailboxList$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxList$1;-><init>(Lcom/android/email/activity/MailboxList;)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadAccountNameTask:Landroid/os/AsyncTask;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mMove:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->finish()V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10

    const/4 v9, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v4, p3

    check-cast v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-static {p0}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v7

    iget-object v6, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v8, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/email/FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v6, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v7, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    const v7, 0x7f0f0018

    invoke-virtual {v6, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v6, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v7, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v6, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v7, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-static {p0, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v6

    if-nez v6, :cond_3

    iget v6, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v6, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    iget-object v6, p0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->notifyDataSetChanged()V

    if-eq v3, v9, :cond_1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    const/16 v6, 0xc

    if-ne v3, v6, :cond_2

    :cond_1
    const v6, 0x7f1002cd

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v6, 0x7f1002cf

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v6, 0x7f1002d0

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    const/16 v6, 0x8

    if-eq v3, v6, :cond_3

    const/16 v6, 0x61

    if-eq v3, v6, :cond_3

    const v6, 0x7f1002d2

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    move v1, p1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/android/email/activity/MailboxList$3;

    invoke-direct {v2, p0, v1}, Lcom/android/email/activity/MailboxList$3;-><init>(Lcom/android/email/activity/MailboxList;I)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0

    :pswitch_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/email/activity/MailboxList;->createMailboxInRoot:Z

    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->createMailbox()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->renameMailbox()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->deleteMailbox()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->createContextMenu()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x1

    const-string v2, "FolderOption"

    const-string v3, "onCreateOptionsMenu(Menu menu)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0f001a

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-wide v2, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f1002d5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v2, 0x7f1002d2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return v4
.end method

.method protected onDestroy()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    iget-object v2, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    invoke-virtual {v2, v4}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->cancel(Z)Z

    iput-object v5, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MailboxList;->mLoadAccountNameTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MailboxList;->mLoadAccountNameTask:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MailboxList;->mLoadAccountNameTask:Landroid/os/AsyncTask;

    invoke-virtual {v2, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v5, p0, Lcom/android/email/activity/MailboxList;->mLoadAccountNameTask:Landroid/os/AsyncTask;

    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MailboxList;->managedCursors:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/MailboxList;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iput p3, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    iget-wide v2, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    move-object v1, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;-><init>(Lcom/android/email/activity/MailboxList;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {p0}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v4

    iget-object v3, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/email/FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MailboxList;->mFolderName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/activity/MailboxList;->mFolderName:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MailboxList;->mFolderName:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-wide v3, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_3

    iput p3, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    iget-object v3, p0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->notifyDataSetChanged()V

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const v4, 0x7f080069

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const v4, 0x7f080070

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f080058

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f080314

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const v4, 0x7f080315

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    sput-object v3, Lcom/android/email/activity/MailboxList;->mlistContextMenu:[Ljava/lang/String;

    :cond_2
    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    const/16 v3, 0x61

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const v4, 0x7f080069

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const v4, 0x7f080070

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f080058

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f080314

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const v4, 0x7f080315

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x5

    const v5, 0x7f08030f

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    sput-object v3, Lcom/android/email/activity/MailboxList;->mlistContextMenu:[Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/email/activity/MailboxList;->showDialog(I)V

    return v6
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12

    const/4 v11, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->isNetworkConnected()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->onBackPressed()V

    goto :goto_0

    :sswitch_1
    iput-boolean v6, p0, Lcom/android/email/activity/MailboxList;->isRefreshCommand:Z

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v7, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-virtual {v1, v7, v8}, Lcom/android/email/Controller;->updateMailboxList(J)V

    iget-wide v7, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-static {p0, v7, v8}, Lcom/android/email/activity/MailboxList;->actionHandleAccount(Landroid/content/Context;J)V

    goto :goto_0

    :sswitch_2
    const-wide/16 v3, -0x1

    const/4 v0, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "displayName=\'__eas\' AND accountKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v5, v9}, Lcom/android/email/activity/MailboxList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    iput-wide v3, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    invoke-virtual {p0, v11}, Lcom/android/email/activity/MailboxList;->showDialog(I)V

    goto :goto_0

    :catchall_0
    move-exception v6

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v6

    :cond_3
    const/4 v2, 0x0

    const v7, 0x7f080113

    invoke-virtual {p0, v7}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;

    invoke-virtual {v7, v2}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f1002d2 -> :sswitch_2
        0x7f1002d5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mControllerCallback:Lcom/android/email/activity/MailboxList$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f1002d5

    const v3, 0x7f1002d2

    const/4 v2, 0x1

    const-string v0, "FolderOption"

    const-string v1, "onPrepareOptionsMenu(Menu menu)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxList;->isMoveScreen:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mControllerCallback:Lcom/android/email/activity/MailboxList$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/email/activity/MailboxList$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MailboxList$2;-><init>(Lcom/android/email/activity/MailboxList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .locals 2

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->managedCursors:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopManagingCursor(Landroid/database/Cursor;)V
    .locals 2

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->managedCursors:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
