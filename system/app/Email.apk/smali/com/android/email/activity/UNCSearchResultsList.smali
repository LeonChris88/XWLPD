.class public Lcom/android/email/activity/UNCSearchResultsList;
.super Landroid/app/ListActivity;
.source "UNCSearchResultsList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;,
        Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;,
        Lcom/android/email/activity/UNCSearchResultsList$MediaScannerNotifier;,
        Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;,
        Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;
    }
.end annotation


# static fields
.field private static final FILE_NAME:Ljava/lang/String;


# instance fields
.field broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private directFileOpen:Z

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mAccountId:J

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;

.field private mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;

.field private mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;

.field private mHistory:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListAdapter:Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mLoadSearchResultsTask:Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;

.field private mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field private mMailboxId:J

.field private mUNCDocSaveHandler:Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;

.field private mUiHandler:Landroid/os/Handler;

.field private mode:I

.field private showFetchDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/UNCSearchResultsList;->FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mUiHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;

    iput-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mHistory:Ljava/util/Stack;

    iput v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mode:I

    iput-boolean v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->directFileOpen:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->showFetchDialog:Z

    new-instance v0, Lcom/android/email/activity/UNCSearchResultsList$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/UNCSearchResultsList$1;-><init>(Lcom/android/email/activity/UNCSearchResultsList;)V

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/UNCSearchResultsList;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mMailboxId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/Controller;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/UNCSearchResultsList;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mMailboxId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/UNCSearchResultsList;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/UNCSearchResultsList;->showToast(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mListAdapter:Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/UNCSearchResultsList;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/UNCSearchResultsList;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/UNCSearchResultsList;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/UNCSearchResultsList;->runOnUiThread(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/email/activity/UNCSearchResultsList;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/UNCSearchResultsList;->runOnUiThread(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/email/activity/UNCSearchResultsList;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/UNCSearchResultsList;->viewDocument(J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mUNCDocSaveHandler:Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/email/activity/UNCSearchResultsList;Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;)Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mUNCDocSaveHandler:Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/UNCSearchResultsList;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mHistory:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/ExtendedProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/email/activity/UNCSearchResultsList;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/UNCSearchResultsList;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mLoadSearchResultsTask:Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/UNCSearchResultsList;Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;)Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mLoadSearchResultsTask:Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/ExtendedProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/UNCSearchResultsList;Lcom/android/emailcommon/provider/EmailContent$Document;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/UNCSearchResultsList;->getAttmtInfo(Lcom/android/emailcommon/provider/EmailContent$Document;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/email/activity/UNCSearchResultsList;->FILE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/UNCSearchResultsList;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mode:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/email/activity/UNCSearchResultsList;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mode:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/email/activity/UNCSearchResultsList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->directFileOpen:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/email/activity/UNCSearchResultsList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/UNCSearchResultsList;->directFileOpen:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mControllerCallback:Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;

    return-object v0
.end method

.method public static actionHandleDocs(Landroid/app/Activity;Ljava/lang/String;JJ)V
    .locals 2

    const-string v0, "UNCSearchResultsList"

    const-string v1, "Inside actionHandleDocs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/email/activity/UNCSearchResultsList;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "AccountId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "MailboxId"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "LinkId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 11

    const/4 v10, 0x0

    const/16 v7, 0x2f

    const/16 v8, 0x20

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v2

    :goto_0
    return-object v7

    :cond_0
    const/16 v7, 0x2e

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v4, 0x2

    :goto_1
    const v7, 0x7fffffff

    if-ge v4, v7, :cond_5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v6, :cond_1

    const-string v6, ""

    :cond_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    move-object v7, v2

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v7, "UNCSearchResultsList"

    const-string v8, "createUniqueFile || Exception"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/io/File;

    const-string v7, "IllegalFormat-%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public static findExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAttmtInfo(Lcom/android/emailcommon/provider/EmailContent$Document;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 12

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/android/email/activity/UNCSearchResultsList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "fileName =? AND location =?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v9, p1, Lcom/android/emailcommon/provider/EmailContent$Document;->mDisplayName:Ljava/lang/String;

    aput-object v9, v4, v10

    iget-object v9, p1, Lcom/android/emailcommon/provider/EmailContent$Document;->mLinkId:Ljava/lang/String;

    aput-object v9, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v0, "UNCSearchResultsList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, -0x1

    if-eq v6, v0, :cond_3

    int-to-long v0, v6

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v7

    :goto_0
    return-object v7

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move-object v7, v5

    goto :goto_0
.end method

.method private readArgumentsFromIntent()V
    .locals 5

    const-wide/16 v3, -0x1

    const-string v1, "UNCSearchResultsList"

    const-string v2, "Inside readArgumentsFromIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/email/activity/UNCSearchResultsList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "AccountId"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mAccountId:J

    iget-wide v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mAccountId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const-string v1, "UNCSearchResultsList"

    const-string v2, "Must pass com.android.email.AccountId of type long in extras"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/email/activity/UNCSearchResultsList;->finish()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/UNCSearchResultsList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "MailboxId"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mMailboxId:J

    iget-wide v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mMailboxId:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/UNCSearchResultsList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "LinkId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mHistory:Ljava/util/Stack;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mHistory:Ljava/util/Stack;

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mHistory:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-wide v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mAccountId:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    goto :goto_0

    :cond_2
    iget-wide v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mMailboxId:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    goto :goto_1
.end method

.method private runOnUiThread(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/activity/UNCSearchResultsList$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/activity/UNCSearchResultsList$3;-><init>(Lcom/android/email/activity/UNCSearchResultsList;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private runOnUiThread(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/activity/UNCSearchResultsList$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/activity/UNCSearchResultsList$4;-><init>(Lcom/android/email/activity/UNCSearchResultsList;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showToast(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private viewDocument(J)V
    .locals 12

    const/4 v11, 0x1

    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    iget-wide v7, p0, Lcom/android/email/activity/UNCSearchResultsList;->mAccountId:J

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8, v9, v10}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/UNCSearchResultsList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const-string v7, "UNCSearchResultsList"

    const-string v8, "Action View Intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v7, p0, Lcom/android/email/activity/UNCSearchResultsList;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v7, "application/vnd.oma.drm.content"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0x7f0800bc

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/email/activity/UNCSearchResultsList;->runOnUiThread(II)V

    :goto_0
    return-void

    :cond_0
    if-eqz v2, :cond_1

    const-string v7, "application/eml"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-ne v11, v7, :cond_1

    const-string v2, "text/plain"

    :cond_1
    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    const-string v8, "text/x-vnote"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "text/x-vnote"

    invoke-virtual {v6, v3, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "UNCSearchResultsList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doFinishLoadAttachment1 called! attachment.mFileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/email/activity/UNCSearchResultsList;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v5

    const v7, 0x7f080153

    invoke-direct {p0, v7, v11}, Lcom/android/email/activity/UNCSearchResultsList;->runOnUiThread(II)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-wide v7, p0, Lcom/android/email/activity/UNCSearchResultsList;->mAccountId:J

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/email/activity/UNCSearchResultsList;->getAttachmentIntent(JJ)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/UNCSearchResultsList;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    const-string v7, "UNCSearchResultsList"

    const-string v8, "Failed to open document"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "Failed to open document"

    invoke-direct {p0, v7, v11}, Lcom/android/email/activity/UNCSearchResultsList;->runOnUiThread(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public getAttachmentIntent(JJ)Landroid/content/Intent;
    .locals 6

    invoke-static {p1, p2, p3, p4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UNCSearchResultsList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/activity/UNCSearchResultsList;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x80001

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v3
.end method

.method public onBackPressed()V
    .locals 4

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UNCSearchResultsList;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;

    iget-wide v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mAccountId:J

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;-><init>(Lcom/android/email/activity/UNCSearchResultsList;JLjava/lang/String;)V

    iput-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mLoadSearchResultsTask:Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mLoadSearchResultsTask:Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 19

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v16

    check-cast v16, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object/from16 v0, v16

    iget-wide v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Document;->restoreDocumentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Document;

    move-result-object v15

    if-nez v15, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-wide/16 v17, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/email/activity/UNCSearchResultsList;->getAttmtInfo(Lcom/android/emailcommon/provider/EmailContent$Document;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/UNCSearchResultsList;->mode:I

    if-eqz v14, :cond_2

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/android/email/activity/UNCSearchResultsList;->FILE_NAME:Ljava/lang/String;

    iget-object v2, v15, Lcom/android/emailcommon/provider/EmailContent$Document;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/android/email/activity/UNCSearchResultsList;->showDialog(ILandroid/os/Bundle;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList;->mController:Lcom/android/email/Controller;

    iget-wide v2, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v4, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-wide v6, v15, Lcom/android/emailcommon/provider/EmailContent$Document;->mMailboxKey:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/activity/UNCSearchResultsList;->mAccountId:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/activity/UNCSearchResultsList;->mControllerCallback:Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v1 .. v12}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;ZZ)V

    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const v1, 0x7f0802fe

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/UNCSearchResultsList;->showToast(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList;->mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList;->mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;

    invoke-virtual {v1}, Lcom/android/email/ExtendedProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/UNCSearchResultsList;->dismissDialog(I)V

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/UNCSearchResultsList;->mode:I

    if-eqz v14, :cond_4

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/android/email/activity/UNCSearchResultsList;->FILE_NAME:Ljava/lang/String;

    iget-object v2, v15, Lcom/android/emailcommon/provider/EmailContent$Document;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/android/email/activity/UNCSearchResultsList;->showDialog(ILandroid/os/Bundle;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList;->mController:Lcom/android/email/Controller;

    iget-wide v2, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v4, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-wide v6, v15, Lcom/android/emailcommon/provider/EmailContent$Document;->mMailboxKey:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/activity/UNCSearchResultsList;->mAccountId:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/activity/UNCSearchResultsList;->mControllerCallback:Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v1 .. v12}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;ZZ)V

    :cond_3
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_4
    const v1, 0x7f0802fe

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/UNCSearchResultsList;->showToast(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList;->mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList;->mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;

    invoke-virtual {v1}, Lcom/android/email/ExtendedProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/UNCSearchResultsList;->dismissDialog(I)V

    goto :goto_2

    :pswitch_2
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/android/email/activity/UNCSearchResultsList;->FILE_NAME:Ljava/lang/String;

    iget-object v2, v15, Lcom/android/emailcommon/provider/EmailContent$Document;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/android/email/activity/UNCSearchResultsList;->showDialog(ILandroid/os/Bundle;)Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/UNCSearchResultsList;->mode:I

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList;->mController:Lcom/android/email/Controller;

    iget-wide v2, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v4, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-wide v6, v15, Lcom/android/emailcommon/provider/EmailContent$Document;->mMailboxKey:J

    iget-wide v8, v15, Lcom/android/emailcommon/provider/EmailContent$Document;->mAccountKey:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/activity/UNCSearchResultsList;->mControllerCallback:Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v1 .. v12}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;ZZ)V

    :cond_5
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_6
    const v1, 0x7f0802fe

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/UNCSearchResultsList;->showToast(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList;->mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList;->mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;

    invoke-virtual {v1}, Lcom/android/email/ExtendedProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/UNCSearchResultsList;->dismissDialog(I)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x7f1002c8
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f040054

    invoke-virtual {p0, v2}, Lcom/android/email/activity/UNCSearchResultsList;->setContentView(I)V

    iput-object p0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/UNCSearchResultsList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/android/email/activity/UNCSearchResultsList;->registerForContextMenu(Landroid/view/View;)V

    new-instance v2, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;

    invoke-direct {v2, p0, p0}, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;-><init>(Lcom/android/email/activity/UNCSearchResultsList;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mListAdapter:Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;

    iget-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mListAdapter:Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;

    invoke-virtual {p0, v2}, Lcom/android/email/activity/UNCSearchResultsList;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/email/activity/UNCSearchResultsList;->readArgumentsFromIntent()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.EMAILDOCSEARCH_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/email/activity/UNCSearchResultsList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mController:Lcom/android/email/Controller;

    new-instance v2, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;-><init>(Lcom/android/email/activity/UNCSearchResultsList;Lcom/android/email/activity/UNCSearchResultsList$1;)V

    iput-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mControllerCallback:Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;

    const-string v2, "UNCSearchResultsList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAccountId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/email/activity/UNCSearchResultsList;->mAccountId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/android/email/activity/UNCSearchResultsList;->FILE_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/UNCSearchResultsList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "LinkId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/android/email/activity/UNCSearchResultsList;->showDialog(ILandroid/os/Bundle;)Z

    iget-wide v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mAccountId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UNCSearchResultsList;->finish()V

    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v4, p3

    check-cast v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-wide v1, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Document;->restoreDocumentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Document;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v5, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mFlagFolder:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UNCSearchResultsList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mDisplayName:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const v5, 0x7f0f0017

    invoke-virtual {v3, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    sget-object v2, Lcom/android/email/activity/UNCSearchResultsList;->FILE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v1

    :pswitch_0
    new-instance v1, Lcom/android/email/ExtendedProgressDialog;

    invoke-direct {v1, p0}, Lcom/android/email/ExtendedProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/UNCSearchResultsList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080152

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/ExtendedProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;

    invoke-virtual {v1, v4}, Lcom/android/email/ExtendedProgressDialog;->setIcon(I)V

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;

    invoke-virtual {v1, v0}, Lcom/android/email/ExtendedProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;

    invoke-virtual {v1, v4}, Lcom/android/email/ExtendedProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;

    invoke-virtual {v1, v4}, Lcom/android/email/ExtendedProgressDialog;->setProgressStyle(I)V

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;

    invoke-virtual {v2}, Lcom/android/email/ExtendedProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    new-instance v1, Lcom/android/email/ExtendedProgressDialog;

    invoke-direct {v1, p0}, Lcom/android/email/ExtendedProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/UNCSearchResultsList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0802f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/ExtendedProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;

    invoke-virtual {v1, v0}, Lcom/android/email/ExtendedProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;

    invoke-virtual {v1, v4}, Lcom/android/email/ExtendedProgressDialog;->setIcon(I)V

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;

    invoke-virtual {v1, v4}, Lcom/android/email/ExtendedProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;

    invoke-virtual {v1, v4}, Lcom/android/email/ExtendedProgressDialog;->setProgressStyle(I)V

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;

    new-instance v2, Lcom/android/email/activity/UNCSearchResultsList$2;

    invoke-direct {v2, p0}, Lcom/android/email/activity/UNCSearchResultsList$2;-><init>(Lcom/android/email/activity/UNCSearchResultsList;)V

    invoke-virtual {v1, v2}, Lcom/android/email/ExtendedProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iput-boolean v4, p0, Lcom/android/email/activity/UNCSearchResultsList;->showFetchDialog:Z

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mUNCDocSaveHandler:Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mUNCDocSaveHandler:Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;

    invoke-virtual {v0}, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mUNCDocSaveHandler:Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;

    invoke-virtual {v0}, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->quit()Z

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mAccountId:J

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/activity/ActivityHelper;->clearDocumentsDB(Landroid/content/Context;Lcom/android/email/Controller;J)V

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/UNCSearchResultsList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "UNCSearchResultsList"

    const-string v1, "unregistering receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Document;->restoreDocumentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Document;

    move-result-object v24

    const-string v3, "UNCSearchResultsList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "document.mDisplayName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "UNCSearchResultsList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "document.mLinkId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mLinkId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v24, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/email/activity/UNCSearchResultsList;->getAttmtInfo(Lcom/android/emailcommon/provider/EmailContent$Document;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v23

    if-eqz v24, :cond_2

    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mFlagFolder:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mAccountKey:J

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mLinkId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/activity/UNCSearchResultsList;->mMailboxId:J

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lcom/android/email/activity/EmailDocSearchQuery;->startActivity(Landroid/app/Activity;JJLjava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/email/activity/UNCSearchResultsList;->mode:I

    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/android/email/activity/UNCSearchResultsList;->FILE_NAME:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lcom/android/email/activity/UNCSearchResultsList;->showDialog(ILandroid/os/Bundle;)Z

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/email/activity/UNCSearchResultsList;->mController:Lcom/android/email/Controller;

    move-object/from16 v0, v23

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v23

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-object/from16 v0, v24

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mMailboxKey:J

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mAccountKey:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/UNCSearchResultsList;->mControllerCallback:Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-virtual/range {v9 .. v20}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;ZZ)V

    goto :goto_0

    :cond_3
    const v3, 0x7f0802fe

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Lcom/android/email/activity/UNCSearchResultsList;->showToast(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/UNCSearchResultsList;->mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/UNCSearchResultsList;->mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;

    invoke-virtual {v3}, Lcom/android/email/ExtendedProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/UNCSearchResultsList;->dismissDialog(I)V

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v2, "LinkId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mHistory:Ljava/util/Stack;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mHistory:Ljava/util/Stack;

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mHistory:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;

    invoke-virtual {v2}, Lcom/android/email/ExtendedProgressDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/android/email/activity/UNCSearchResultsList;->FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/android/email/activity/UNCSearchResultsList;->showDialog(ILandroid/os/Bundle;)Z

    :cond_2
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/email/activity/UNCSearchResultsList;->FILE_NAME:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/android/email/ExtendedProgressDialog;

    invoke-virtual {v1, v0}, Lcom/android/email/ExtendedProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/email/activity/UNCSearchResultsList;->FILE_NAME:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/android/email/ExtendedProgressDialog;

    invoke-virtual {v1, v0}, Lcom/android/email/ExtendedProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    const-string v0, "UNCSearchResultsList"

    const-string v1, "Inside onResume: Calling addResultCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mControllerCallback:Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    const-string v0, "UNCSearchResultsList"

    const-string v1, "Inside onPause: Calling removeResultCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList;->mControllerCallback:Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    return-void
.end method
