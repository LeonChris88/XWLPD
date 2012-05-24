.class public Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
.super Ljava/lang/Object;
.source "SamsungWidgetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;
    }
.end annotation


# static fields
.field private static sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;


# instance fields
.field private mIsWidgetLoaded:Z

.field private final mItemCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMetrics:Landroid/util/DisplayMetrics;

.field private mSamsungAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

.field private mWidgetLoaderThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/app/ActivityGroup;)V
    .locals 2

    const/16 v1, 0xa

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->initInstance(Landroid/app/ActivityGroup;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->loadWidgets(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->loadYahooWidgetForCsc()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z

    return p1
.end method

.method private findWidgetForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v6
.end method

.method public static getInstance(Landroid/app/ActivityGroup;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;-><init>(Landroid/app/ActivityGroup;)V

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    :goto_0
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->initInstance(Landroid/app/ActivityGroup;)V

    goto :goto_0
.end method

.method private loadWidgets(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private loadYahooWidgetForCsc()Z
    .locals 22

    const-string v1, "/system/csc/others.xml"

    const-string v2, "AppWidget"

    const-string v3, "Yahoo"

    const-string v5, "On"

    const-string v4, "Off"

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v12

    :try_start_0
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    new-instance v19, Ljava/io/File;

    const-string v20, "/system/csc/others.xml"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    const/4 v13, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v13, v0, :cond_4

    invoke-interface {v9, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v19, "AppWidget"

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_3

    invoke-interface {v10, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    const-string v19, "Yahoo"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    const-string v20, "On"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v19, 0x1

    :goto_2
    return v19

    :cond_0
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Off"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v19

    if-eqz v19, :cond_1

    const/16 v19, 0x0

    goto :goto_2

    :cond_1
    const/16 v19, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :catch_0
    move-exception v11

    const-string v19, "Launcher.SWidgetPkgMgr"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ParserConfigurationException:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    const/16 v19, 0x1

    goto :goto_2

    :catch_1
    move-exception v11

    const-string v19, "Launcher.SWidgetPkgMgr"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SAXException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v11

    const-string v19, "Launcher.SWidgetPkgMgr"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IOException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .locals 17

    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    const/4 v12, 0x0

    if-nez v6, :cond_a

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v14, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    const-string v15, "com.samsung.sec.android.SAMSUNG_WIDGET"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v14, v15, :cond_0

    const-string v14, "com.samsung.sec.android.SAMSUNG_WIDGET"

    const/4 v15, 0x0

    const-string v16, "com.samsung.sec.android.SAMSUNG_WIDGET"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    new-array v12, v8, [Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_2

    const/4 v14, 0x0

    aput-object v14, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v8, :cond_5

    new-instance v13, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v13, v14}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v13, v2, v14}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updateWidgetItemFromXml(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    iget v14, v13, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mOrder:I

    if-ltz v14, :cond_4

    iget v14, v13, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mOrder:I

    aput-object v13, v12, v14

    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    aput-object v13, v12, v11

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_4
    array-length v14, v12

    if-ge v5, v14, :cond_7

    aget-object v14, v12, v5

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    aget-object v15, v12, v5

    invoke-virtual {v14, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    move-object v14, v12

    :goto_5
    return-object v14

    :cond_8
    new-instance v6, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v14}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updateWidgetItem(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v14, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    new-array v12, v14, [Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    const/4 v14, 0x0

    aput-object v6, v12, v14

    move-object v14, v12

    goto :goto_5

    :cond_9
    const/4 v14, 0x0

    goto :goto_5

    :cond_a
    move-object v14, v12

    goto :goto_5
.end method

.method private declared-synchronized stopAndWaitForWidgetsLoader()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoaderThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unbindCachedIconDrawable(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method private unbindCachedIconDrawables()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    iget-object v2, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateWidgetItem(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;)Z
    .locals 22

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-nez v3, :cond_0

    const/16 v18, 0x0

    :goto_1
    return v18

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "plug_in_class"

    const-string v20, "array"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v0, v4

    move/from16 v18, v0

    if-lez v18, :cond_1

    const/16 v18, 0x0

    aget-object v18, v4, v18

    if-eqz v18, :cond_1

    const/16 v18, 0x0

    aget-object v18, v4, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_1

    const/16 v18, 0x0

    aget-object v18, v4, v18

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    :cond_1
    const/16 v18, 0x0

    goto :goto_1

    :cond_2
    const/16 v18, 0x0

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "preview"

    const-string v20, "drawable"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_width"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_height"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "plug_in_name"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    :goto_2
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/16 v18, 0x0

    aget-object v18, v4, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v8, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    move-object/from16 v0, p2

    iput v14, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetPreview:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mMetrics:Landroid/util/DisplayMetrics;

    iget v6, v5, Landroid/content/res/Configuration;->orientation:I

    const/16 v17, 0x2

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v6, v0, :cond_7

    if-eqz v15, :cond_5

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    if-eqz v12, :cond_6

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_4
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    const/16 v17, 0x1

    :goto_5
    move/from16 v0, v17

    iput v0, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_width"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_height"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    if-eqz v15, :cond_a

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_6
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    if-eqz v12, :cond_b

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_7
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    :goto_8
    iput v6, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_3

    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_4

    :cond_7
    if-eqz v15, :cond_8

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_9
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    if-eqz v12, :cond_9

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_a
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I

    goto/16 :goto_5

    :cond_8
    const/16 v18, 0x0

    goto :goto_9

    :cond_9
    const/16 v18, 0x0

    goto :goto_a

    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_6

    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_7

    :cond_c
    if-eqz v15, :cond_d

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_b
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    if-eqz v12, :cond_e

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_c
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I

    goto/16 :goto_8

    :cond_d
    const/16 v18, 0x0

    goto :goto_b

    :cond_e
    const/16 v18, 0x0

    goto :goto_c
.end method

.method private updateWidgetItemFromXml(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Z
    .locals 27

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-nez v3, :cond_0

    const/16 v24, 0x0

    :goto_1
    return v24

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    if-nez v15, :cond_1

    const/16 v24, 0x0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v21

    const/16 v24, 0x2

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    :cond_2
    :goto_2
    :try_start_2
    const-string v24, "plug_in_name"

    const-string v25, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_4

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    :goto_3
    const/16 v24, 0x0

    const-string v25, "widgetId"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x0

    const-string v25, "description"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    const/16 v24, 0x0

    const-string v25, "icon"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    const/16 v24, 0x0

    const-string v25, "themeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v24, 0x0

    const-string v25, "preview"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v16

    const/16 v24, 0x0

    const-string v25, "width"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x0

    const-string v25, "height"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    const/16 v24, 0x0

    const-string v25, "class"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v4

    const/4 v14, 0x0

    const/16 v24, 0x0

    :try_start_3
    const-string v25, "order"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v14

    :goto_4
    :try_start_4
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetId:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetPreview:I

    if-lez v8, :cond_3

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    :cond_3
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mDescription:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mThemeName:Ljava/lang/String;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mOrder:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    :goto_6
    :try_start_8
    iget v7, v5, Landroid/content/res/Configuration;->orientation:I

    const/16 v20, 0x2

    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v7, v0, :cond_5

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    const/16 v20, 0x1

    :goto_7
    move/from16 v0, v20

    iput v0, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    const/16 v24, 0x2

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    :goto_8
    iput v7, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    const/16 v24, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_4
    :try_start_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_3

    :catch_3
    move-exception v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f02002f

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_5

    :catch_4
    move-exception v9

    const-string v24, "Launcher.SWidgetPkgMgr"

    const-string v25, "Resource not found exception :"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    const/16 v24, 0x0

    goto/16 :goto_1

    :catch_5
    move-exception v9

    const/16 v24, -0x1

    :try_start_a
    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mOrder:I

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_8

    :catch_6
    move-exception v24

    goto/16 :goto_4
.end method


# virtual methods
.method declared-synchronized addPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->findWidgetForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_2

    aget-object v5, v3, v0

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public allocWidgetId()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->allocWidgetId()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;J)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->allocWidgetId()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1, p3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;JLcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public destroyWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 5

    iget-wide v0, p2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    return-void
.end method

.method public findWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    iget-object v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p3, :cond_0

    iget-object v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mThemeName:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getWidgetItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initInstance(Landroid/app/ActivityGroup;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public isWidgetLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z

    return v0
.end method

.method public pauseWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 0

    invoke-virtual {p2, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->fireOnPause(Landroid/content/Context;)V

    return-void
.end method

.method declared-synchronized removePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    iget-object v6, v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->unbindCachedIconDrawable(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    iget-object v8, v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 0

    invoke-virtual {p2, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->fireOnResume(Landroid/content/Context;)V

    return-void
.end method

.method declared-synchronized scanPackage(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->stopAndWaitForWidgetsLoader()V

    new-instance v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;-><init>(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    const-string v2, "SamsungWidgets Loader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoaderThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized start(Landroid/content/Context;Z)V
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->stopAndWaitForWidgetsLoader()V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unbind()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->stopAndWaitForWidgetsLoader()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->unbindCachedIconDrawables()V

    return-void
.end method

.method declared-synchronized updatePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    iget-object v7, v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v5, v4

    :cond_2
    if-eqz v5, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->findWidgetForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, p1, v5, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updateWidgetItem(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method
