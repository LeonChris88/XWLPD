.class public Lcom/android/email/AttachmentInfo;
.super Ljava/lang/Object;
.source "AttachmentInfo.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public downloadButton:Landroid/widget/ImageButton;

.field public iconView:Landroid/widget/ImageView;

.field public final mAccountKey:J

.field public final mAllowInstall:Z

.field public final mAllowSave:Z

.field public final mAllowView:Z

.field public mAttachmentViewLin:Landroid/widget/LinearLayout;

.field public final mContentType:Ljava/lang/String;

.field public final mDenyFlags:I

.field public final mId:J

.field public final mName:Ljava/lang/String;

.field public mOverMax:Z

.field public final mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "fileName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/AttachmentInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;J)V
    .locals 17

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mSize:J

    invoke-static/range {p6 .. p7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mId:J

    move-wide/from16 v0, p8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mAccountKey:J

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/email/AttachmentInfo;->mOverMax:Z

    const/4 v6, 0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v5, 0x0

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    sget-object v14, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    sget-object v14, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_1
    const/4 v6, 0x0

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    sget-object v13, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    invoke-static {v13, v8}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v6, 0x0

    or-int/lit8 v7, v7, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    sget-object v13, Lcom/android/emailcommon/utility/AttachmentUtilities;->INSTALLABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    invoke-static {v13, v8}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "install_non_market_apps"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    const/4 v12, 0x1

    :goto_0
    const/4 v6, 0x0

    if-nez v12, :cond_9

    or-int/lit8 v7, v7, 0x8

    :goto_1
    move v4, v6

    :cond_4
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/email/AttachmentInfo;->mSize:J

    sget v15, Lcom/android/emailcommon/utility/AttachmentUtilities;->MAX_ATTACHMENT_DOWNLOAD_SIZE:I

    int-to-long v15, v15

    cmp-long v13, v13, v15

    if-lez v13, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v10

    const/4 v13, 0x1

    if-eq v10, v13, :cond_5

    const/4 v6, 0x0

    const/4 v5, 0x0

    or-int/lit8 v7, v7, 0x2

    :cond_5
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/email/AttachmentInfo;->mOverMax:Z

    :cond_6
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v14}, Lcom/android/email/AttachmentInfo;->getAttachmentIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v6, 0x0

    or-int/lit8 v7, v7, 0x4

    :cond_7
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/email/AttachmentInfo;->mAllowView:Z

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/email/AttachmentInfo;->mAllowSave:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/email/AttachmentInfo;->mAllowInstall:Z

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/email/AttachmentInfo;->mDenyFlags:I

    return-void

    :cond_8
    const/4 v12, 0x0

    goto :goto_0

    :cond_9
    or-int/lit8 v7, v7, 0x10

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 10

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    iget-object v6, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    iget-wide v8, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public getAttachmentIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 6

    iget-wide v3, p0, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {p2, p3, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v0

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://com.android.email.attachmentprovider"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x80001

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v1

    :catch_0
    move-exception v2

    const-string v3, "AttachmentInfo.getAttachmentIntent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException occured!! mName["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAttachmentIntentToFile(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 16

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/email/AttachmentInfo;->mId:J

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v13, v14}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v4

    const-wide/16 v13, 0x0

    cmp-long v13, p2, v13

    if-lez v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0802fc

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-static {v2, v6}, Lcom/android/emailcommon/utility/Utility;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_6

    const-string v13, "Email"

    const-string v14, "Utility.createUniqueFile - return null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "Email"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FileName ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v9

    :goto_0
    :try_start_1
    const-string v13, "AttachmentInfo.getAttachmentIntent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException occured!! mName["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_4

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_4
    :goto_1
    if-eqz v11, :cond_5

    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :cond_5
    :goto_2
    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v14, "application/aac"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    const-string v14, "audio/mp4"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    const v13, 0x80001

    invoke-virtual {v8, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_4
    return-object v8

    :cond_6
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-static {v7, v12}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_a

    if-eqz v7, :cond_7

    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_7
    :goto_5
    if-eqz v12, :cond_d

    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object v11, v12

    goto :goto_2

    :catch_1
    move-exception v13

    move-object v11, v12

    goto :goto_2

    :catch_2
    move-exception v10

    :goto_6
    :try_start_8
    const-string v13, "AttachmentInfo.getAttachmentIntent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NullPointerException occured!! mName["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v7, :cond_8

    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :cond_8
    :goto_7
    if-eqz v11, :cond_5

    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    :catch_3
    move-exception v13

    goto :goto_2

    :catchall_0
    move-exception v13

    :goto_8
    if-eqz v7, :cond_9

    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    :cond_9
    :goto_9
    if-eqz v11, :cond_a

    :try_start_c
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    :cond_a
    :goto_a
    throw v13

    :cond_b
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_c
    invoke-virtual/range {p0 .. p3}, Lcom/android/email/AttachmentInfo;->getAttachmentIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v8

    goto :goto_4

    :catch_4
    move-exception v13

    goto :goto_5

    :catch_5
    move-exception v13

    goto/16 :goto_1

    :catch_6
    move-exception v13

    goto/16 :goto_2

    :catch_7
    move-exception v13

    goto :goto_7

    :catch_8
    move-exception v14

    goto :goto_9

    :catch_9
    move-exception v14

    goto :goto_a

    :catchall_1
    move-exception v13

    move-object v11, v12

    goto :goto_8

    :catch_a
    move-exception v10

    move-object v11, v12

    goto :goto_6

    :catch_b
    move-exception v9

    move-object v11, v12

    goto/16 :goto_0

    :cond_d
    move-object v11, v12

    goto/16 :goto_2
.end method

.method public isEligibleForDownload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/AttachmentInfo;->mAllowView:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/AttachmentInfo;->mAllowSave:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Attachment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/AttachmentInfo;->mSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
