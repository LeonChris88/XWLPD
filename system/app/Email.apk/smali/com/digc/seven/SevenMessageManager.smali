.class public Lcom/digc/seven/SevenMessageManager;
.super Ljava/lang/Object;
.source "SevenMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digc/seven/SevenMessageManager$AttachBean;
    }
.end annotation


# static fields
.field public static final ATTACHMENT_PROJECTION:[Ljava/lang/String;

.field private static FACADE:Lcom/android/email/combined/MessageFacade;

.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/digc/seven/SevenMessageManager;->FACADE:Lcom/android/email/combined/MessageFacade;

    sget-object v0, Lcom/digc/seven/SevenSyncProvider;->RECEIVED_PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/digc/seven/SevenMessageManager;->PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/digc/seven/SevenMessageManager;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    sget-object v0, Lcom/digc/seven/SevenMessageManager;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sget-object v0, Lcom/digc/seven/SevenMessageManager;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "file_name"

    aput-object v2, v0, v1

    sget-object v0, Lcom/digc/seven/SevenMessageManager;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "size"

    aput-object v2, v0, v1

    sget-object v0, Lcom/digc/seven/SevenMessageManager;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "est_size"

    aput-object v2, v0, v1

    sget-object v0, Lcom/digc/seven/SevenMessageManager;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "uri"

    aput-object v2, v0, v1

    sget-object v0, Lcom/digc/seven/SevenMessageManager;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sget-object v0, Lcom/digc/seven/SevenMessageManager;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "status"

    aput-object v2, v0, v1

    sget-object v0, Lcom/digc/seven/SevenMessageManager;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "email_id"

    aput-object v2, v0, v1

    sget-object v0, Lcom/digc/seven/SevenMessageManager;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "pos"

    aput-object v2, v0, v1

    sget-object v0, Lcom/digc/seven/SevenMessageManager;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "offset"

    aput-object v2, v0, v1

    sget-object v0, Lcom/digc/seven/SevenMessageManager;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "content_id"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static basicMoveToSent(Landroid/content/Context;I)V
    .locals 12

    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    const-string v0, "0"

    const-string v1, "0"

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/digc/seven/SevenSyncProvider;->getBasicAccountAndMessageKey(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x1

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    const/4 v11, 0x5

    invoke-virtual {v2, v9, v10, v11}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v6

    const/4 v5, 0x0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "mailboxKey"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v8, v5, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_0
    const/4 v3, 0x0

    :cond_1
    return-void

    :catch_0
    move-exception v4

    :try_start_1
    const-string v9, "SevenMessageManager"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v9

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_2
    throw v9
.end method

.method private static convertStdFolderIdToLocalFolderIdforSeven(Landroid/content/Context;II)I
    .locals 8

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v7, -0x1

    if-lez p1, :cond_1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "special_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/seven/Z7/provider/Z7Content$Folders;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "SevenMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to obtain local id of special folder"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static convertorMailAddressForBasic(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "<"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, ">"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-le v2, v4, :cond_0

    if-le v1, v4, :cond_0

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    aget-object v3, v0, v6

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    :goto_0
    return-object v0

    :cond_0
    aput-object p0, v0, v6

    aput-object p0, v0, v7

    goto :goto_0

    :cond_1
    const-string v3, ""

    aput-object v3, v0, v6

    const-string v3, ""

    aput-object v3, v0, v7

    goto :goto_0
.end method

.method private static convertorMailAddressForSeven(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/digc/seven/SevenMessageManager;->convertorMailAddressForSeven(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertorMailAddressForSeven(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    if-eqz p0, :cond_1

    const-string v1, "\u0001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p1, :cond_1

    const-string v1, "\u0001"

    const-string v2, ", "

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p0, :cond_0

    const-string v1, "\u0002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    const-string v2, "\u0002"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static convertorMailAddressesForBasic(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    move-object v0, p0

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v3, v0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    if-lez v6, :cond_3

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/digc/seven/SevenMessageManager;->convertorMailAddressForBasic(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v7, v4, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v6, :cond_0

    const-string v7, "\u0001"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    invoke-static {v0}, Lcom/digc/seven/SevenMessageManager;->convertorMailAddressForBasic(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v0, v4, v8

    goto :goto_1
.end method

.method private static convertorMailFromAddressForBasic(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lcom/digc/seven/SevenMessageManager;->convertorMailAddressForBasic(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v2, v0, v4

    const/4 v4, 0x1

    aget-object v1, v0, v4

    move-object v3, p0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u0002"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    return-object v3

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public static makeMessage(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 35

    invoke-static/range {p1 .. p1}, Lcom/android/email/combined/CombinedEmailManager;->getInstance(Landroid/content/Context;)Lcom/android/email/combined/CombinedEmailManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/combined/CombinedEmailManager;->getMessageFacade()Lcom/android/email/combined/MessageFacade;

    move-result-object v2

    sput-object v2, Lcom/digc/seven/SevenMessageManager;->FACADE:Lcom/android/email/combined/MessageFacade;

    const/16 v21, 0x1

    const-string v2, "SevenMessageManager"

    const-string v3, "SevenMessageManager.makeMessage()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "message_id"

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    const-string v2, "is_read"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    const-string v2, "is_favorite"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    const-string v2, "date"

    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    const-string v2, "email"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "subject"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v2, "has_attachments"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    const/16 v33, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v28, 0x0

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/4 v8, 0x0

    const/16 v30, 0x0

    const/16 v20, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v34, 0x0

    const/4 v2, -0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_4

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v14, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/seven/Z7/provider/Z7Content$Emails;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/digc/seven/SevenMessageManager;->PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    const-string v2, "SevenMessageManager"

    const-string v3, "-----------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x3

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/4 v2, 0x4

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x5

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v2, 0x6

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x7

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v2, 0x8

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/16 v2, 0x9

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const/16 v2, 0xa

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    const/16 v2, 0xb

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    const/16 v2, 0xc

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    const/16 v2, 0xd

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_5

    const/16 v23, 0x1

    :goto_0
    const/16 v2, 0xe

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/16 v2, 0xf

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v2, 0x10

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const/16 v24, 0x1

    :goto_1
    const/16 v2, 0x11

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    const/16 v22, 0x1

    :cond_0
    :goto_2
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :goto_3
    const/4 v14, 0x0

    :cond_1
    const-string v2, "SevenMessageManager"

    const-string v3, "------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v31, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct/range {v31 .. v31}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    move-object/from16 v0, v31

    iput-wide v15, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move/from16 v0, v23

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    const/4 v2, 0x1

    move-object/from16 v0, v31

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    move/from16 v0, v22

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    move/from16 v0, v24

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    const/4 v2, 0x0

    move-object/from16 v0, v31

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move-object/from16 v0, v31

    iput-wide v15, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    const/4 v2, 0x0

    move-object/from16 v0, v31

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mClientId:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v8, v2}, Lcom/digc/seven/SevenMessageManager;->convertorMailFromAddressForBasic(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Lcom/digc/seven/SevenMessageManager;->convertorMailAddressesForBasic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v13}, Lcom/digc/seven/SevenMessageManager;->convertorMailAddressesForBasic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v11}, Lcom/digc/seven/SevenMessageManager;->convertorMailAddressesForBasic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static/range {v28 .. v28}, Lcom/digc/seven/SevenMessageManager;->convertorMailAddressesForBasic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v31

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v8, v2}, Lcom/digc/seven/SevenMessageManager;->convertorMailFromAddressForBasic(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    move/from16 v0, v20

    int-to-long v2, v0

    move-object/from16 v0, v31

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    move/from16 v0, v25

    int-to-long v2, v0

    move-object/from16 v0, v31

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    move/from16 v0, v30

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMailboxKey:I

    const/4 v2, 0x1

    move-object/from16 v0, v31

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTypeMsg:I

    move/from16 v0, v26

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingBody:I

    move/from16 v0, v27

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingHtmlBody:I

    move/from16 v0, v34

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mUnkEncoding:I

    new-instance v29, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-direct/range {v29 .. v29}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Snippet;->fromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    :cond_2
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    if-nez v2, :cond_3

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Snippet;->fromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, v29

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v29

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    if-eqz v21, :cond_4

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/digc/seven/SevenMessageManager;->putAttachement(Landroid/content/Context;I)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v9

    sget-object v2, Lcom/digc/seven/SevenMessageManager;->FACADE:Lcom/android/email/combined/MessageFacade;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v2, v0, v1, v9}, Lcom/android/email/combined/MessageFacade;->syncMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    :cond_4
    return-void

    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_1

    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_2

    :cond_8
    :try_start_1
    const-string v2, "SevenMessageManager"

    const-string v3, "cursor.getCount is 0!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v17

    const/16 v21, 0x0

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    const/4 v14, 0x0

    :cond_9
    throw v2
.end method

.method public static putAttachement(Landroid/content/Context;I)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 11

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    new-array v4, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v0, v4, v2

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/seven/Z7/provider/Z7Content$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/digc/seven/SevenMessageManager;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "email_id=?"

    const-string v5, "order by pos"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v10, 0x0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v8, v0, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    aput-object v0, v8, v7

    aget-object v0, v8, v7

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v0, ";"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const-string v0, ";"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    aget-object v0, v8, v7

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ";"

    invoke-virtual {v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    :cond_0
    aget-object v0, v8, v7

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const/16 v0, 0xa

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string v0, "<"

    const-string v1, ""

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    :cond_1
    aget-object v0, v8, v7

    iput-object v9, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    aget-object v0, v8, v7

    const/16 v1, 0x8

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_2
    throw v0

    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_4
    return-object v8
.end method

.method private static saveUsingLocalFolderIdforSeven(Landroid/content/Context;ILcom/android/emailcommon/provider/EmailContent$Message;[Lcom/android/emailcommon/provider/EmailContent$Attachment;I)I
    .locals 30

    const/16 v19, -0x1

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v25, "account_id"

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/digc/seven/SevenSyncProvider;->getComposeUri(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/digc/seven/SevenSyncProvider;->getComposeCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v10

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_14

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v18

    const/4 v5, 0x0

    const-string v9, ""

    const/4 v14, 0x0

    const-string v20, ""

    const/4 v15, -0x1

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-eqz v25, :cond_0

    const/16 v25, 0x3

    move/from16 v0, p4

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/digc/seven/SevenSyncProvider;->getAttacheUri(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v5

    :cond_0
    const/4 v12, 0x0

    move-object/from16 v7, p3

    array-length v0, v7

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_13

    aget-object v8, v7, v13

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->isSaved()Z

    move-result v25

    if-eqz v25, :cond_4

    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    const-string v25, "email_id"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "file_name"

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_1

    iget-object v9, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    if-eqz v9, :cond_5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v25, v14, -0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Hashtable;

    const-string v26, "pos"

    invoke-virtual/range {v25 .. v26}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v15

    :cond_1
    :goto_1
    const/16 v25, 0x3

    move/from16 v0, p4

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    if-eqz v9, :cond_6

    add-int/lit8 v25, v14, -0x2

    move/from16 v0, v25

    if-ne v0, v15, :cond_6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Hashtable;

    const-string v26, "uri"

    invoke-virtual/range {v25 .. v26}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    const/16 v25, 0x0

    move-object/from16 v0, v25

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    :cond_2
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    const/16 v25, 0x0

    move-object/from16 v0, v25

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    :cond_3
    const-string v25, "uri"

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d

    const/16 v25, 0x0

    move-object/from16 v0, v25

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    const-string v25, "mime_type"

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "content_id"

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "x-vcard"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    if-lez v25, :cond_f

    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-gtz v25, :cond_f

    const-string v27, "size"

    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v25, v0

    const-wide/16 v28, 0x0

    cmp-long v25, v25, v28

    if-gtz v25, :cond_e

    const-wide/16 v25, 0x1

    :goto_4
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_5
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_12

    const-string v25, "is_local"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    sget-object v26, Lcom/seven/Z7/provider/Z7Content$Attachment;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_4
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Hashtable;

    const-string v26, "pos"

    invoke-virtual/range {v25 .. v26}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto/16 :goto_1

    :cond_6
    const/16 v25, 0x3

    move/from16 v0, p4

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    if-nez v9, :cond_b

    const-string v25, "2"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Hashtable;

    const-string v26, "file_name"

    invoke-virtual/range {v25 .. v26}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Hashtable;

    const-string v26, "uri"

    invoke-virtual/range {v25 .. v26}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    const/16 v25, 0x0

    move-object/from16 v0, v25

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    :cond_7
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    const/16 v25, 0x0

    move-object/from16 v0, v25

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    :cond_8
    const-string v25, "uri"

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    const/16 v25, 0x0

    move-object/from16 v0, v25

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    :cond_a
    const-string v25, "uri"

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const/16 v25, 0x3

    move/from16 v0, p4

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    if-nez v9, :cond_c

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_c

    const-string v25, "uri"

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    const-string v25, "uri"

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    const-string v25, "mime_type"

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v25, v0

    goto/16 :goto_4

    :cond_f
    const-string v27, "size"

    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v25, v0

    const-wide/16 v28, 0x0

    cmp-long v25, v25, v28

    if-gez v25, :cond_10

    const-wide/16 v25, 0x0

    :goto_7
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v27, "est_size"

    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v25, v0

    const-wide/16 v28, 0x0

    cmp-long v25, v25, v28

    if-gez v25, :cond_11

    const-wide/16 v25, 0x0

    :goto_8
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_5

    :cond_10
    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v25, v0

    goto :goto_7

    :cond_11
    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v25, v0

    goto :goto_8

    :cond_12
    const-string v25, "is_local"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_6

    :cond_13
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const-string v26, "has_attachments"

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_15

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    :goto_9
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_14
    if-ltz p1, :cond_1a

    if-eqz v10, :cond_1a

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    long-to-int v6, v0

    if-nez v6, :cond_16

    new-instance v25, Ljava/lang/RuntimeException;

    const-string v26, "accountId must be set"

    invoke-direct/range {v25 .. v26}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_15
    const/16 v25, 0x0

    goto :goto_9

    :cond_16
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    const-string v25, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v25, "delivery_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v25, "account_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "folder_id"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "_from"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/digc/seven/SevenMessageManager;->convertorMailAddressForSeven(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_17

    const-string v25, ""

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    :cond_17
    const-string v25, "body"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\n\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\n\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    const-string v25, "message_content_type"

    const-string v26, "text/html"

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1c

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_18

    const-string v25, ""

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    :cond_18
    const-string v25, "html_body"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "<br><br>"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "<br><br>"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    const-string v25, "_to"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/digc/seven/SevenMessageManager;->convertorMailAddressForSeven(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "cc"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/digc/seven/SevenMessageManager;->convertorMailAddressForSeven(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "bcc"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/digc/seven/SevenMessageManager;->convertorMailAddressForSeven(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "subject"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "importance"

    const/16 v26, 0x5

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "org_action"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "org_id"

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    if-gtz v25, :cond_19

    const-string v25, "has_attachments"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_19
    const-string v25, "is_unread"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "followup_status"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "is_receipt_pending"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "is_omit_receipt"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_1a

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-eqz v25, :cond_1a

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    :cond_1a
    return v19

    :cond_1b
    const-string v25, "body"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1c
    const-string v25, "html_body"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b
.end method

.method public static saveforSeven(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;[Lcom/android/emailcommon/provider/EmailContent$Attachment;I)I
    .locals 9

    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    const/4 p3, 0x3

    :cond_0
    const/4 v8, -0x1

    if-eqz p1, :cond_2

    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    long-to-int v7, v0

    if-nez v7, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "accountId must be set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, v7, v2}, Lcom/digc/seven/SevenMessageManager;->convertStdFolderIdToLocalFolderIdforSeven(Landroid/content/Context;II)I

    move-result v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/digc/seven/SevenMessageManager;->saveUsingLocalFolderIdforSeven(Landroid/content/Context;ILcom/android/emailcommon/provider/EmailContent$Message;[Lcom/android/emailcommon/provider/EmailContent$Attachment;I)I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_2

    int-to-long v1, v7

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    int-to-long v5, v8

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/digc/seven/SevenSyncProvider;->setBasicMessageCBupdate(Landroid/content/Context;JJJ)I

    :cond_2
    return v8
.end method

.method public static syncFolder(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const/4 v9, -0x1

    invoke-static {p1}, Lcom/android/email/combined/CombinedEmailManager;->getInstance(Landroid/content/Context;)Lcom/android/email/combined/CombinedEmailManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/combined/CombinedEmailManager;->getMessageFacade()Lcom/android/email/combined/MessageFacade;

    move-result-object v6

    sput-object v6, Lcom/digc/seven/SevenMessageManager;->FACADE:Lcom/android/email/combined/MessageFacade;

    const/4 v3, -0x1

    const-string v6, "account_id"

    invoke-virtual {p0, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v6, "SevenMessageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " remoteAccountId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const-string v6, "folder_id"

    invoke-virtual {p0, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "folder_name"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "parent_folder_id"

    invoke-virtual {p0, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v9, :cond_2

    :try_start_0
    invoke-static {p1, v1}, Lcom/digc/seven/SevenSyncProvider;->getParentsFolderName(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    if-eqz p2, :cond_0

    const-string v6, "com.seven.Z7.FOLDER_ADDED"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/digc/seven/SevenMessageManager;->FACADE:Lcom/android/email/combined/MessageFacade;

    invoke-virtual {v6, v3, v4, v5}, Lcom/android/email/combined/MessageFacade;->addFolder(IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "SevenMessageManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v6, "com.seven.Z7.FOLDER_REMOVED"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/digc/seven/SevenMessageManager;->FACADE:Lcom/android/email/combined/MessageFacade;

    invoke-virtual {v6, v3, v4}, Lcom/android/email/combined/MessageFacade;->removeFolder(II)V

    goto :goto_0
.end method

.method public static syncMessageTimeLimit(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Lcom/android/email/combined/CombinedEmailManager;->getInstance(Landroid/content/Context;)Lcom/android/email/combined/CombinedEmailManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/combined/CombinedEmailManager;->getMessageFacade()Lcom/android/email/combined/MessageFacade;

    move-result-object v3

    sput-object v3, Lcom/digc/seven/SevenMessageManager;->FACADE:Lcom/android/email/combined/MessageFacade;

    const-string v3, "account_id"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "delete_timestamp"

    const-wide/16 v4, -0x1

    invoke-virtual {p0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    sget-object v3, Lcom/digc/seven/SevenMessageManager;->FACADE:Lcom/android/email/combined/MessageFacade;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/email/combined/MessageFacade;->removeMessageForDate(IJ)V

    return-void
.end method

.method public static syncUpdateMessage(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-static {p1}, Lcom/android/email/combined/CombinedEmailManager;->getInstance(Landroid/content/Context;)Lcom/android/email/combined/CombinedEmailManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/combined/CombinedEmailManager;->getMessageFacade()Lcom/android/email/combined/MessageFacade;

    move-result-object v6

    sput-object v6, Lcom/digc/seven/SevenMessageManager;->FACADE:Lcom/android/email/combined/MessageFacade;

    const-string v6, "message_id"

    invoke-virtual {p0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "is_read"

    invoke-virtual {p0, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v6, "is_favorite"

    invoke-virtual {p0, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v6, "folder_id"

    invoke-virtual {p0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v6, "src_folder_id"

    invoke-virtual {p0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "folder_id"

    invoke-virtual {p0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz p2, :cond_1

    const-string v6, "com.seven.Z7.EMAIL_UPDATED"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "is_read"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/digc/seven/SevenMessageManager;->FACADE:Lcom/android/email/combined/MessageFacade;

    invoke-virtual {v6, v4, v1}, Lcom/android/email/combined/MessageFacade;->setMessageRead(IZ)V

    :cond_0
    const-string v6, "is_favorite"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/digc/seven/SevenMessageManager;->FACADE:Lcom/android/email/combined/MessageFacade;

    invoke-virtual {v6, v4, v0}, Lcom/android/email/combined/MessageFacade;->setMessageFavorite(IZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v6, "com.seven.Z7.EMAIL_REMOVED"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/digc/seven/SevenMessageManager;->FACADE:Lcom/android/email/combined/MessageFacade;

    invoke-virtual {v6, v4, v3}, Lcom/android/email/combined/MessageFacade;->removeMessage(II)V

    goto :goto_0
.end method
