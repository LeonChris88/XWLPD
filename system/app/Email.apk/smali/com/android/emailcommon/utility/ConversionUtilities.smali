.class public Lcom/android/emailcommon/utility/ConversionUtilities;
.super Ljava/lang/Object;
.source "ConversionUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
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

.method public static updateBodyFields(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/emailcommon/mail/Part;

    const/4 v15, 0x0

    const-string v17, "X-Android-Body-Quoted-Part"

    invoke-interface/range {v16 .. v17}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    if-eqz v9, :cond_0

    array-length v0, v9

    move/from16 v17, v0

    if-lez v17, :cond_0

    const/16 v17, 0x0

    aget-object v8, v9, v17

    :cond_0
    const-string v17, "text/html"

    invoke-interface/range {v16 .. v16}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    :try_start_0
    invoke-static/range {v16 .. v16}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    const/high16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    if-eqz v4, :cond_3

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/high16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "<BR><BR>...<BR><BR>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "<BR>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    :cond_1
    :goto_1
    if-eqz v8, :cond_7

    const-string v17, "quoted-reply"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-string v17, "quoted-forward"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v17, "quoted-intro"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v7, :cond_2

    if-eqz v5, :cond_6

    :cond_2
    if-eqz v4, :cond_4

    invoke-static {v11, v15}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    :goto_2
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v18, v0

    if-eqz v7, :cond_5

    const/16 v17, 0x1

    :goto_3
    or-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_0

    :cond_3
    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/high16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\r\n\r...\n\r\n\r"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\r"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    goto :goto_1

    :cond_4
    invoke-static {v14, v15}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    goto :goto_2

    :cond_5
    const/16 v17, 0x2

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_7

    invoke-static {v12, v15}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    goto/16 :goto_0

    :cond_7
    if-eqz v4, :cond_8

    invoke-static {v10, v15}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    goto/16 :goto_0

    :cond_8
    invoke-static {v13, v15}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    goto/16 :goto_0

    :cond_9
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/emailcommon/mail/Snippet;->fromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    :cond_a
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_b

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    invoke-static {v15}, Lcom/android/emailcommon/mail/Snippet;->fromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    :cond_b
    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    if-eqz v17, :cond_c

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    :cond_c
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    if-eqz v17, :cond_d

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    :cond_d
    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    if-eqz v17, :cond_e

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    :cond_e
    const/16 v17, 0x1

    return v17

    :catch_0
    move-exception v17

    goto/16 :goto_1
.end method
