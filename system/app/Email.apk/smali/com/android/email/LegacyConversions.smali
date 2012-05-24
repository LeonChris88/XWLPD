.class public Lcom/android/email/LegacyConversions;
.super Ljava/lang/Object;
.source "LegacyConversions.java"


# static fields
.field private static final ATTACHMENT_META_COLUMNS_PROJECTION:[Ljava/lang/String;

.field private static final sServerMailboxNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/LegacyConversions;->ATTACHMENT_META_COLUMNS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addOneAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v21, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct/range {v21 .. v21}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "name"

    invoke-static {v12, v3}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_0

    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "filename"

    invoke-static {v11, v3}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    :cond_0
    const-wide/16 v26, 0x0

    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    const-string v3, "size"

    invoke-static {v15, v3}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_1

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    :cond_1
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseInlineTag()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v16, 0x0

    if-eqz v15, :cond_2

    const/4 v3, 0x0

    invoke-static {v15, v3}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_2
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "inline"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_3
    const/16 v20, 0x1

    :goto_0
    if-eqz v20, :cond_d

    if-eqz v22, :cond_d

    const/16 v19, 0x1

    :goto_1
    if-eqz v19, :cond_4

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit16 v3, v3, 0x80

    move-object/from16 v0, v21

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    :cond_4
    const-string v3, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_e

    const/4 v3, 0x0

    aget-object v23, v24, v3

    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-wide/from16 v0, v26

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v21

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    const-string v3, "Content-Transfer-Encoding"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_f

    const/4 v3, 0x0

    aget-object v3, v17, v3

    :goto_3
    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, v21

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    const-string v5, "message/rfc822"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoName_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".eml"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    :cond_5
    const/4 v10, 0x0

    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v18

    if-eqz v18, :cond_6

    const-string v3, "pop3"

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    :cond_6
    const/4 v3, 0x1

    if-eq v10, v3, :cond_7

    if-eqz p3, :cond_10

    move-object/from16 v0, p3

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_7
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    const/4 v9, 0x0

    :cond_8
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v14}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    invoke-virtual {v14, v13}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V

    iget-object v3, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v9, 0x1

    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v21

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    if-nez v9, :cond_a

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->save(Landroid/content/Context;)Landroid/net/Uri;

    :cond_a
    :goto_4
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v5, v6}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-nez v3, :cond_b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    :cond_b
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    return-void

    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_e
    const/16 v23, 0x0

    goto/16 :goto_2

    :cond_f
    const-string v3, "base64"

    goto/16 :goto_3

    :catchall_0
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_10
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_4
.end method

.method private static addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/emailcommon/internet/TextBody;

    invoke-direct {v0, p3}, Lcom/android/emailcommon/internet/TextBody;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v1, v0, p1}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>(Lcom/android/emailcommon/mail/Body;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string v2, "X-Android-Body-Quoted-Part"

    invoke-virtual {v1, v2, p2}, Lcom/android/emailcommon/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    goto :goto_0
.end method

.method private static appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static declared-synchronized inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x1

    const-class v2, Lcom/android/email/LegacyConversions;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v3, 0x7f08000c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v3, 0x7f08000d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v3, 0x7f08000e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v3, 0x7f08000f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v3, 0x7f080010

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v3, 0x7f080011

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    monitor-exit v2

    return v0

    :cond_2
    :try_start_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static makeAccount(Landroid/content/Context;Lcom/android/email/Account;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 11

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v9, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    invoke-virtual {p1}, Lcom/android/email/Account;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    iput-object v2, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/email/Account;->getSyncWindow()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    invoke-virtual {p1}, Lcom/android/email/Account;->getAutomaticCheckIntervalMinutes()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    invoke-virtual {p1}, Lcom/android/email/Account;->isNotifyNewMail()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v7

    :goto_0
    invoke-virtual {p1}, Lcom/android/email/Account;->isVibrate()Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x2

    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/android/email/Account;->isAddSignature()Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x2000

    :cond_1
    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setFlags(I)V

    invoke-virtual {p1}, Lcom/android/email/Account;->getDeletePolicy()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    invoke-virtual {p1}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/email/Account;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/email/Account;->getRingtone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/email/Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput v8, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    iget-wide v0, p1, Lcom/android/email/Account;->mSecurityFlags:J

    iput-wide v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    iput-object v2, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/email/Account;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/email/Account;->mIsDefault:Z

    iput-boolean v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    invoke-virtual {p1}, Lcom/android/email/Account;->getSyncScheduleData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    aget-object v1, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v2, v6, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v6, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    aget-object v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v10, 0x5

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    :cond_2
    :try_start_0
    invoke-virtual {v9, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    invoke-virtual {v9, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/email/Account;->getSenderUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    :try_start_2
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCbaCertificate(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_4
    iget-wide v0, p1, Lcom/android/email/Account;->mAccountKey:J

    invoke-virtual {v9, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setAccountKey(J)V

    iget-wide v0, p1, Lcom/android/email/Account;->mSevenAccountKey:J

    invoke-virtual {v9, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSevenAccountKey(J)V

    iget v0, p1, Lcom/android/email/Account;->mTypeMsg:I

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setTypeMsg(I)V

    iget-wide v0, p1, Lcom/android/email/Account;->mTimeLimit:J

    invoke-virtual {v9, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setTimeLimit(J)V

    iget-wide v0, p1, Lcom/android/email/Account;->mSizeLimit:J

    invoke-virtual {v9, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSizeLimit(J)V

    invoke-virtual {p1}, Lcom/android/email/Account;->getMessageFormat()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setMessageFormat(I)V

    iget v0, p1, Lcom/android/email/Account;->mAccountType:I

    iput v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-virtual {p1}, Lcom/android/email/Account;->getEmailSize()B

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailSize(B)V

    invoke-virtual {p1}, Lcom/android/email/Account;->getSyncLookbackData()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    invoke-virtual {p1}, Lcom/android/email/Account;->getCalendarSyncLookbackData()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    new-instance v1, Landroid/accounts/Account;

    iget-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.android.contacts"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncContact()I

    move-result v2

    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v2, "com.android.contacts"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncContact()I

    move-result v0

    if-ne v0, v7, :cond_5

    move v0, v7

    :goto_5
    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    const-string v0, "com.android.calendar"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncCalendar()I

    move-result v2

    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v0, "com.android.calendar"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncCalendar()I

    move-result v2

    if-ne v2, v7, :cond_6

    :goto_6
    invoke-static {v1, v0, v7}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    return-object v9

    :cond_4
    invoke-virtual {p1}, Lcom/android/email/Account;->isVibrateWhenSilent()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x40

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v1, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    const-string v1, "Email"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v1, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    const-string v1, "Email"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_2
    move-exception v0

    const-string v1, "Email"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :cond_5
    move v0, v8

    goto :goto_5

    :cond_6
    move v7, v8

    goto :goto_6

    :cond_7
    move v0, v8

    goto/16 :goto_0
.end method

.method static makeLegacyAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/email/Account;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/email/Account;

    invoke-direct {v0, p0}, Lcom/android/email/Account;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSyncWindow(I)V

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setAutomaticCheckIntervalMinutes(I)V

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrate(Z)V

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrateWhenSilent(Z)V

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setDeletePolicy(I)V

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/Account;->mUuid:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setRingtone(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/Account;->mProtocolVersion:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    iput-wide v4, v0, Lcom/android/email/Account;->mSecurityFlags:J

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/email/Account;->setAddSignature(Z)V

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/Account;->mSignature:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Account;->setAccountKey(J)V

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Account;->setSevenAccountKey(J)V

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setTypeMsg(I)V

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Account;->setTimeLimit(J)V

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSizeLimit:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Account;->setSizeLimit(J)V

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getMessageFormat()I

    move-result v1

    iput v1, v0, Lcom/android/email/Account;->mMessageFormat:I

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    iput v1, v0, Lcom/android/email/Account;->mAccountType:I

    return-object v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method public static makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v3, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {v3}, Lcom/android/emailcommon/internet/MimeMessage;-><init>()V

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-nez v7, :cond_3

    const-string v7, ""

    :goto_0
    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    array-length v7, v0

    if-lez v7, :cond_0

    aget-object v7, v0, v9

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setFrom(Lcom/android/emailcommon/mail/Address;)V

    :cond_0
    new-instance v7, Ljava/util/Date;

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setUid(Ljava/lang/String;)V

    sget-object v10, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v11, 0x3

    if-ne v7, v11, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v3, v10, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    sget-object v7, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    iget-boolean v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    sget-object v7, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    iget-boolean v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setReplyTo([Lcom/android/emailcommon/mail/Address;)V

    new-instance v7, Ljava/util/Date;

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setInternalDate(Ljava/util/Date;)V

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V

    const-string v7, "Content-Type"

    const-string v10, "multipart/mixed"

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {v4}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    const-string v7, "mixed"

    invoke-virtual {v4, v7}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/internet/MimeMessage;->setBody(Lcom/android/emailcommon/mail/Body;)V

    :try_start_0
    const-string v7, "text/html"

    const/4 v10, 0x0

    iget-wide v11, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v7, v10, v11}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    const-string v7, "text/plain"

    const/4 v10, 0x0

    iget-wide v11, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v7, v10, v11}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    move v2, v8

    :goto_4
    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    move v1, v8

    :goto_5
    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    :try_start_2
    const-string v7, "text/plain"

    const-string v8, "quoted-intro"

    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreIntroTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v7, v8, v9}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_6
    if-eqz v2, :cond_7

    const-string v5, "quoted-reply"

    :goto_7
    :try_start_3
    const-string v7, "text/html"

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v5, v8}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_8
    :try_start_4
    const-string v7, "text/plain"

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v5, v8}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_9
    return-object v3

    :cond_3
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    move v7, v9

    goto/16 :goto_1

    :catch_0
    move-exception v6

    const-string v7, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while reading html body "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v6

    const-string v7, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while reading text body "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    move v2, v9

    goto :goto_4

    :cond_6
    move v1, v9

    goto :goto_5

    :catch_2
    move-exception v6

    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading text reply "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    const-string v5, "quoted-forward"

    goto :goto_7

    :catch_3
    move-exception v6

    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading html reply "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :catch_4
    move-exception v6

    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading text reply "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method

.method public static saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface/range {p1 .. p1}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-wide/16 v6, 0x0

    if-eqz v9, :cond_1

    invoke-static {v9, v10}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v14

    int-to-long v6, v14

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iput-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "size"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v14, "contentUri"

    invoke-virtual {v8, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v13, v8, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method static stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p0, :cond_2

    const-string p0, ""

    :cond_2
    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    iput-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/mail/Part;

    invoke-interface {v1}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "name"

    invoke-static {v3, v7}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-interface {v1}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "filename"

    invoke-static {v2, v7}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_1
    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-interface {v1}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-nez v6, :cond_2

    const-string v7, "(null)/(null)"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "(null)/(null)"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_2
    invoke-static {p0, p1, v1, p3}, Lcom/android/email/LegacyConversions;->addOneAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static updateBodyFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/EmailContent$Body;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/emailcommon/mail/Part;

    const/16 v17, 0x0

    const-string v19, "X-Android-Body-Quoted-Part"

    invoke-interface/range {v18 .. v19}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x0

    if-eqz v10, :cond_0

    array-length v0, v10

    move/from16 v19, v0

    if-lez v19, :cond_0

    const/16 v19, 0x0

    aget-object v9, v10, v19

    :cond_0
    const-string v19, "text/html"

    invoke-interface/range {v18 .. v18}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v19, "text/calendar"

    invoke-interface/range {v18 .. v18}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    :try_start_0
    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    const/high16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    if-eqz v5, :cond_3

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    const/high16 v21, 0xc

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "<BR><BR>...<BR><BR>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f080086

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "<BR>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    :cond_1
    :goto_1
    if-eqz v9, :cond_7

    const-string v19, "quoted-reply"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    const-string v19, "quoted-forward"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const-string v19, "quoted-intro"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v8, :cond_2

    if-eqz v6, :cond_6

    :cond_2
    if-eqz v5, :cond_4

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    :goto_2
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, -0x4

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v20, v0

    if-eqz v8, :cond_5

    const/16 v19, 0x1

    :goto_3
    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_0

    :cond_3
    :try_start_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    const/high16 v21, 0xc

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n\r\n\r...\n\r\n\r"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f080086

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n\r"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    goto :goto_1

    :cond_4
    invoke-static/range {v16 .. v17}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    goto :goto_2

    :cond_5
    const/16 v19, 0x2

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    goto/16 :goto_0

    :cond_7
    if-eqz v5, :cond_8

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    goto/16 :goto_0

    :cond_8
    if-eqz v4, :cond_9

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    goto/16 :goto_0

    :cond_a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_b

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_b

    invoke-static/range {v17 .. v17}, Lcom/android/emailcommon/mail/Snippet;->fromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    :cond_b
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_c

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/android/emailcommon/mail/Snippet;->fromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    :cond_c
    if-eqz v13, :cond_d

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-eqz v19, :cond_d

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    :cond_d
    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-eqz v19, :cond_e

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    :cond_e
    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-eqz v19, :cond_f

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    :cond_f
    const/16 v19, 0x1

    return v19

    :catch_0
    move-exception v19

    goto/16 :goto_1
.end method

.method public static updateMessageFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJI)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getFrom()[Lcom/android/emailcommon/mail/Address;

    move-result-object v9

    sget-object v19, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v18

    sget-object v19, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    sget-object v19, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getReadReceiptTo()[Lcom/android/emailcommon/mail/Address;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getReplyTo()[Lcom/android/emailcommon/mail/Address;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v10

    const/4 v13, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v15

    if-eqz v15, :cond_c

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    :cond_0
    :goto_0
    const-wide/16 v19, 0x0

    cmp-long v19, v5, v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p1

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    :goto_1
    const/16 v19, 0x4

    move/from16 v0, p7

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const/16 v19, 0x5

    move/from16 v0, p7

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const/16 v19, 0x3

    move/from16 v0, p7

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    :cond_1
    const-string v19, " "

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    :goto_2
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    :cond_2
    if-eqz v16, :cond_11

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    :goto_3
    sget-object v19, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    sget-object v19, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    sget-object v19, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagReply:Z

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    :cond_3
    move-object/from16 v19, p2

    check-cast v19, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    :cond_4
    move-wide/from16 v0, p5

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v0, p3

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    if-eqz v9, :cond_5

    array-length v0, v9

    move/from16 v19, v0

    if-lez v19, :cond_5

    invoke-static {v9}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    :cond_5
    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    const/16 v19, 0x4

    move/from16 v0, p7

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    const/16 v19, 0x5

    move/from16 v0, p7

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    const/16 v19, 0x3

    move/from16 v0, p7

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/EmailUtility;->makeDisplayName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    const-string v19, "Email"

    const-string v20, "*****[toma_naver] localMessage.mDisplayName for outbox, sentbox, draft"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    const-string v19, ""

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    :cond_9
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getImportance()Ljava/lang/String;

    move-result-object v17

    const-string v19, "high"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string v19, "High"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    :cond_a
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    :goto_5
    invoke-static {v12}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    :cond_b
    const/16 v19, 0x1

    return v19

    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v13

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    goto/16 :goto_0

    :cond_d
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    goto/16 :goto_0

    :cond_e
    const-string v19, "Email"

    const-string v20, "*****[toma_naver] localMessage.mTimeStamp = null "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_f
    if-eqz v9, :cond_10

    array-length v0, v9

    move/from16 v19, v0

    if-lez v19, :cond_10

    const/16 v19, 0x0

    aget-object v19, v9, v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/email/util/EmailAddressCacheProcessor;->addFromAddressToCache(Ljava/lang/String;)V

    const/16 v19, 0x0

    aget-object v19, v9, v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_10
    const-string v19, "Email"

    const-string v20, "*****[toma_naver] localMessage.mDisplayName null "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_11
    const-string v19, "Email"

    const-string v20, "*****[toma_naver] localMessage.mSubject == null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_12
    invoke-static/range {p3 .. p4}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v19

    if-eqz v19, :cond_13

    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    goto/16 :goto_4

    :cond_14
    const-string v19, "low"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_15

    const-string v19, "Low"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    :cond_15
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    goto/16 :goto_5

    :cond_16
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    goto/16 :goto_5
.end method
