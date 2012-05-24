.class public Lcom/android/email/activity/PoliciesList;
.super Landroid/app/Fragment;
.source "PoliciesList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/PoliciesList$1;,
        Lcom/android/email/activity/PoliciesList$PolicyItem;,
        Lcom/android/email/activity/PoliciesList$PolicyAdapter;
    }
.end annotation


# static fields
.field private static final POLICIES_CONTENT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private accountPolicyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/PoliciesList$PolicyItem;",
            ">;"
        }
    .end annotation
.end field

.field private devicePolicyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/PoliciesList$PolicyItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountPolicesLayout:Landroid/widget/LinearLayout;

.field private mAccountPoliciesList:Landroid/widget/ListView;

.field private mAccountText:Landroid/widget/TextView;

.field private mDevicePolicesLayout:Landroid/widget/LinearLayout;

.field private mDevicePoliciesList:Landroid/widget/ListView;

.field private mNoPolicesLayout:Landroid/widget/LinearLayout;

.field private mPolicesLayout:Landroid/widget/LinearLayout;

.field private policiesCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/PoliciesList;->POLICIES_CONTENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/PoliciesList;->devicePolicyList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    return-void
.end method

.method public static actionShowPolicyList(Landroid/content/Context;J)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/PoliciesList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private getPolicyNameValue(Landroid/database/Cursor;)V
    .locals 16

    const/4 v2, 0x1

    const/4 v1, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x1

    const/4 v9, 0x1

    if-eqz p1, :cond_2

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "RequireSignedSMIMEMessages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    goto :goto_0

    :cond_1
    const-string v13, "RequireEncryptedSMIMEMessages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    goto :goto_0

    :cond_2
    const-string v8, ""

    const-string v10, ""

    if-eqz p1, :cond_4

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_4

    if-lez v6, :cond_3

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v13, "RequireSignedSMIMEMessages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v9, 0x2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v12, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08023e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/email/activity/PoliciesList$PolicyItem;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v10}, Lcom/android/email/activity/PoliciesList$PolicyItem;-><init>(Lcom/android/email/activity/PoliciesList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string v10, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    if-lez v5, :cond_4

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v13, "RequireEncryptedSMIMEMessages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v9, 0x2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/4 v11, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08023f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/email/activity/PoliciesList$PolicyItem;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v10}, Lcom/android/email/activity/PoliciesList$PolicyItem;-><init>(Lcom/android/email/activity/PoliciesList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    const-string v10, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_4
    if-eqz p1, :cond_44

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_5
    :goto_5
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_44

    const/4 v7, 0x1

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Integer"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v7, 0x0

    :cond_6
    const-string v13, "PasswordMode"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08024a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "64"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, "96"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    :cond_7
    const v13, 0x7f080258

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_8
    :goto_6
    const-string v13, "AllowCamera"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08022f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v10, ""

    :cond_9
    :goto_7
    const-string v13, "MaxEmailBodyTruncationSize"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080243

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f08025c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_a
    :goto_8
    if-eqz v7, :cond_c

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080257

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_b
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "false"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080256

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_c
    const/4 v13, 0x1

    if-ne v9, v13, :cond_43

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/PoliciesList;->devicePolicyList:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/email/activity/PoliciesList$PolicyItem;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v10}, Lcom/android/email/activity/PoliciesList$PolicyItem;-><init>(Lcom/android/email/activity/PoliciesList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const-string v8, ""

    const-string v10, ""

    goto/16 :goto_2

    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_3

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const-string v8, ""

    const-string v10, ""

    goto/16 :goto_4

    :cond_f
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const v13, 0x7f080259

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6

    :cond_10
    const-string v13, "AllowSimpleDevicePassword"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08023d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v10, ""

    goto/16 :goto_6

    :cond_11
    const-string v13, "PasswordRecoveryEnabled"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08024b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    goto/16 :goto_6

    :cond_12
    const-string v13, "DevicePasswordExpiration"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08024d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f08025d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6

    :cond_13
    const-string v13, "DevicePasswordHistory"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08024e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto/16 :goto_5

    :cond_14
    const-string v13, "MinPasswordComplexCharacters"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080251

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto/16 :goto_5

    :cond_15
    const-string v13, "MaxDevicePasswordFailedAttempts"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08024c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto/16 :goto_5

    :cond_16
    const-string v13, "MinDevicePasswordLength"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08024f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto/16 :goto_5

    :cond_17
    const-string v13, "RequireDeviceEncryption"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080248

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v13, 0x7f080257

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6

    :cond_18
    const-string v13, "DeviceEncryptionEnabled"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080249

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v13, 0x7f080257

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6

    :cond_19
    const-string v13, "RemoteWipe"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto/16 :goto_5

    :cond_1a
    const-string v13, "AllowTextMessaging"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080233

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v10, ""

    goto/16 :goto_7

    :cond_1b
    const-string v13, "AllowWifi"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080235

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v10, ""

    goto/16 :goto_7

    :cond_1c
    const-string v13, "AllowBluetoothMode"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08022d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    const v13, 0x7f080256

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_7

    :cond_1d
    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    const v13, 0x7f08025b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_7

    :cond_1e
    const-string v13, "2"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    goto/16 :goto_5

    :cond_1f
    const-string v13, "AllowInternetSharing"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080231

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v10, ""

    goto/16 :goto_7

    :cond_20
    const-string v13, "AllowPOPIMAPEmail"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080232

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v10, ""

    goto/16 :goto_7

    :cond_21
    const-string v13, "AllowBrowser"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08022e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v10, ""

    goto/16 :goto_7

    :cond_22
    const-string v13, "AllowStorageCard"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080237

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v10, ""

    goto/16 :goto_7

    :cond_23
    const-string v13, "AllowDesktopSync"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080236

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v10, ""

    goto/16 :goto_7

    :cond_24
    const-string v13, "AllowIrDA"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080234

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v10, ""

    goto/16 :goto_7

    :cond_25
    const-string v13, "MaxInactivityTime"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_27

    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    const-string v8, ""

    const-string v10, ""

    goto/16 :goto_5

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080250

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f08025a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_7

    :cond_27
    const-string v13, "RequireEncryptedSMIMEMessages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "RequireSignedSMIMEMessages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const/4 v9, 0x2

    goto/16 :goto_7

    :cond_28
    const-string v13, "MaxEmailHtmlBodyTruncationSize"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080244

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f08025c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_29
    const-string v13, "MaxEmailAgeFilter"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080246

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_2a
    const-string v13, "2"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a3

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_2b
    const-string v13, "3"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a4

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_2c
    const-string v13, "4"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_2d
    const-string v13, "5"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_2e
    const-string v13, "MaxCalendarAgeFilter"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "4"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_2f
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080245

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_8

    :cond_30
    const-string v13, "5"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    :cond_31
    const-string v13, "6"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0803c1

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    :cond_32
    const-string v13, "7"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0803c2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    :cond_33
    const-string v13, "RequireManualSyncWhenRoaming"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_34

    const-string v13, "true"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080247

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v13, 0x7f080257

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_34
    const-string v13, "AllowHTMLEmail"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080230

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v10, ""

    goto/16 :goto_8

    :cond_35
    const-string v13, "AttachmentsEnabled"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08023c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v10, ""

    goto/16 :goto_8

    :cond_36
    const-string v13, "MaxAttachmentSize"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080242

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f08025c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_37
    const-string v13, "RequireSignedSMIMEAlgorithm"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_39

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080240

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804ec

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_38
    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804ed

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_39
    const-string v13, "RequireEncryptionSMIMEAlgorithm"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3e

    const/4 v13, 0x1

    if-ne v11, v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080241

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804ee

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_3a
    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804ef

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_3b
    const-string v13, "2"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804f0

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_3c
    const-string v13, "3"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804f1

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_3d
    const-string v13, "4"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804f2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_3e
    const-string v13, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_41

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v13, 0x1

    if-ne v11, v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08023b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08025e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_3f
    const-string v13, "2"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08025f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_40
    const-string v13, "3"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080260

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_41
    const-string v13, "AllowSMIMESoftCerts"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_42

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080238

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v10, ""

    goto/16 :goto_8

    :cond_42
    const/4 v9, 0x1

    goto/16 :goto_8

    :cond_43
    const/4 v13, 0x2

    if-ne v9, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/email/activity/PoliciesList$PolicyItem;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v10}, Lcom/android/email/activity/PoliciesList$PolicyItem;-><init>(Lcom/android/email/activity/PoliciesList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_44
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/PoliciesList;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-super {v0, v1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f040089

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "account_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/activity/PoliciesList;->POLICIES_CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v5, "account_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    const v2, 0x7f100238

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountText:Landroid/widget/TextView;

    iget-object v3, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f100232

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mPolicesLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f100234

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePolicesLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f100237

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPolicesLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f10023a

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mNoPolicesLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f100236

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    const v2, 0x7f100239

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/activity/PoliciesList;->getPolicyNameValue(Landroid/database/Cursor;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->devicePolicyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mNoPolicesLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mPolicesLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-object v15

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mNoPolicesLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mPolicesLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->devicePolicyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePolicesLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPolicesLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    new-instance v3, Lcom/android/email/activity/PoliciesList$PolicyAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f04008a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/PoliciesList;->devicePolicyList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/android/email/activity/PoliciesList$PolicyAdapter;-><init>(Lcom/android/email/activity/PoliciesList;Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v14, 0x0

    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v11, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-interface {v2, v11, v3, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v14, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v2, v14

    iput v2, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2, v13}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    new-instance v3, Lcom/android/email/activity/PoliciesList$PolicyAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f04008a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/android/email/activity/PoliciesList$PolicyAdapter;-><init>(Lcom/android/email/activity/PoliciesList;Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v14, 0x0

    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v11, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-interface {v2, v11, v3, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v14, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v2, v14

    iput v2, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2, v13}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method
