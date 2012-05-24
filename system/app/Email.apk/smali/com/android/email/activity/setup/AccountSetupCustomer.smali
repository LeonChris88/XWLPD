.class public Lcom/android/email/activity/setup/AccountSetupCustomer;
.super Ljava/lang/Object;
.source "AccountSetupCustomer.java"


# static fields
.field private static mCustomerCount:I

.field static mCustomerEmailType:Z

.field static mCustomerList:Lorg/w3c/dom/NodeList;

.field static mCustomerNode:Lorg/w3c/dom/Node;

.field private static mDoc:Lorg/w3c/dom/Document;

.field private static mFilePath:Ljava/lang/String;

.field private static mRoot:Lorg/w3c/dom/Node;

.field private static sInstance:Lcom/android/email/activity/setup/AccountSetupCustomer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/email/activity/setup/AccountSetupCustomer;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->sInstance:Lcom/android/email/activity/setup/AccountSetupCustomer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerEmailType:Z

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->loadXMLFile()V

    return-void
.end method

.method public static getCustomerFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/csc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/email/activity/setup/AccountSetupCustomer;
    .locals 1

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->sInstance:Lcom/android/email/activity/setup/AccountSetupCustomer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->sInstance:Lcom/android/email/activity/setup/AccountSetupCustomer;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->loadXMLFile()V

    :cond_0
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->sInstance:Lcom/android/email/activity/setup/AccountSetupCustomer;

    return-object v0
.end method


# virtual methods
.method public getProviderCustomer(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 35

    const/16 v21, 0x0

    sget-object v32, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    if-nez v32, :cond_0

    const-string v32, "AccountSetupCustomer"

    const-string v33, "Error while trying to load mCustomerNode."

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v22, v21

    :goto_0
    return-object v22

    :cond_0
    const-string v32, "AccountSetupCustomer"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "mCustomerCount: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget v34, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerCount:I

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_1
    sget v32, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerCount:I

    move/from16 v0, v32

    if-ge v9, v0, :cond_12

    sget-object v32, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    sget-object v32, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "AccountName"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v32, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "EmailAddr"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    const-string v32, "yahoo.com"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_2

    const-string v32, "Yahoo! Mail"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v32, "AccountSetupCustomer"

    const-string v33, "domain[yahoo]: "

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, ", emailAddr: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v26, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v31, 0x0

    const/16 v30, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    sget-object v32, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "Incoming"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    if-nez v10, :cond_4

    const/16 v22, 0x0

    goto/16 :goto_0

    :cond_2
    if-eqz v8, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_1

    :cond_3
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v32, "AccountSetupCustomer"

    const-string v33, "domain: "

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, ", emailAddr: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_4
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "MailboxType"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v26

    if-nez v26, :cond_5

    const/16 v22, 0x0

    goto/16 :goto_0

    :cond_5
    const-string v32, "imap3"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_6

    const-string v32, "imap4"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_9

    :cond_6
    const-string v26, "imap"

    :goto_3
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "Secure"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_a

    const-string v32, "off"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_a

    new-instance v29, Ljava/lang/StringBuffer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    const-string v32, "+"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    const-string v33, "+"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    :goto_4
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "ServAddr"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v24

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v32, "://"

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "Port"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_7

    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    const-string v32, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    :cond_7
    sget-object v32, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "LoginType"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_b

    const-string v32, "domain_type"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_b

    const-string v31, "$email"

    :goto_5
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v23, :cond_8

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v32, "AccountSetupCustomer"

    const-string v33, "incomingUri: "

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v32, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "Outgoing"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    if-nez v16, :cond_c

    const/16 v22, 0x0

    goto/16 :goto_0

    :cond_9
    const-string v26, "pop3"

    goto/16 :goto_3

    :cond_a
    const-string v23, ""

    goto/16 :goto_4

    :cond_b
    const-string v31, "$user"

    goto :goto_5

    :cond_c
    const-string v26, "smtp"

    const/16 v32, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "Secure"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_10

    const-string v32, "off"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_10

    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    const-string v32, "+"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    const-string v33, "+"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    :goto_6
    const/16 v32, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "ServAddr"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v24

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v32, "://"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v32, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "Port"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_d

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v32, ":"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    :cond_d
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v23, :cond_e

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v32, "AccountSetupCustomer"

    const-string v33, "outgoingUri: "

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v32, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "SmtpAuth"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v27

    :try_start_0
    new-instance v22, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-direct/range {v22 .. v22}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->label:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    new-instance v32, Ljava/net/URI;

    move-object/from16 v0, v32

    invoke-direct {v0, v11}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    new-instance v32, Ljava/net/URI;

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/lang/String;

    if-eqz v27, :cond_f

    const-string v32, "off"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_11

    :cond_f
    const-string v32, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    :goto_7
    const-string v32, "AccountSetupCustomer"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "<provider id=\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\" label=\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->label:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\" domain=\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\">"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v32, "AccountSetupCustomer"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "\t<incoming uri=\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\" username=\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\">"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v32, "AccountSetupCustomer"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "\t<outgoing uri=\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\" username=\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\">"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v32, "AccountSetupCustomer"

    const-string v33, "</provider>"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v21, v22

    goto/16 :goto_0

    :cond_10
    const-string v23, ""

    goto/16 :goto_6

    :cond_11
    :try_start_2
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v7

    move-object/from16 v21, v22

    :goto_8
    const-string v32, "AccountSetupCustomer"

    const-string v33, "Error while trying to load customer provider settings."

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_12
    move-object/from16 v22, v21

    goto/16 :goto_0

    :catch_1
    move-exception v7

    goto :goto_8
.end method

.method public getTagCount(Lorg/w3c/dom/NodeList;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getTagEmailType(Lorg/w3c/dom/Node;Ljava/lang/String;)Z
    .locals 10

    const/4 v6, 0x1

    if-nez p1, :cond_0

    :goto_0
    return v6

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_1

    const-string v7, "AccountSetupCustomer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "---------"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "return true"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v6, "AccountSetupCustomer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---------"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "return false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string v7, "AccountSetupCustomer"

    const-string v8, "--------- Not exist Combined Email setting non csc.xml : return true --------"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 7

    sget-object v5, Lcom/android/email/activity/setup/AccountSetupCustomer;->mDoc:Lorg/w3c/dom/Document;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    sget-object v5, Lcom/android/email/activity/setup/AccountSetupCustomer;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    goto :goto_0
.end method

.method public getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5

    const/4 v3, 0x0

    sget-object v4, Lcom/android/email/activity/setup/AccountSetupCustomer;->mRoot:Lorg/w3c/dom/Node;

    if-nez v4, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mRoot:Lorg/w3c/dom/Node;

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1
.end method

.method public getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 9

    const/4 v5, 0x0

    if-nez p1, :cond_1

    move-object v0, v5

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v6, "AccountSetupCustomer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTagNode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v5

    goto :goto_0
.end method

.method public getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isCombinedEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerEmailType:Z

    return v0
.end method

.method public loadXMLFile()V
    .locals 6

    :try_start_0
    const-string v3, "customer.xml"

    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getCustomerFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/email/activity/setup/AccountSetupCustomer;->mFilePath:Ljava/lang/String;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/email/activity/setup/AccountSetupCustomer;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    sput-object v3, Lcom/android/email/activity/setup/AccountSetupCustomer;->mDoc:Lorg/w3c/dom/Document;

    sget-object v3, Lcom/android/email/activity/setup/AccountSetupCustomer;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    sput-object v3, Lcom/android/email/activity/setup/AccountSetupCustomer;->mRoot:Lorg/w3c/dom/Node;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->setAccountSetupCustomer()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "AccountSetupCustomer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ParserConfigurationException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "AccountSetupCustomer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SAXException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v3, "AccountSetupCustomer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAccountSetupCustomer()V
    .locals 2

    const-string v0, "Settings.Messages.Email"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    const-string v1, "Combinded"

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagEmailType(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerEmailType:Z

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    const-string v1, "Account"

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagCount(Lorg/w3c/dom/NodeList;)I

    move-result v0

    sput v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerCount:I

    return-void
.end method
