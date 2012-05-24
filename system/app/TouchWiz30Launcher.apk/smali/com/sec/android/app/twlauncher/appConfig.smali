.class public Lcom/sec/android/app/twlauncher/appConfig;
.super Ljava/lang/Object;
.source "appConfig.java"


# static fields
.field private static final instance:Lcom/sec/android/app/twlauncher/appConfig;


# instance fields
.field private prop:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/twlauncher/appConfig;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/appConfig;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/appConfig;->instance:Lcom/sec/android/app/twlauncher/appConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v2, "ro.product.model"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v3, "MODEL"

    invoke-virtual {v2, v3, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "lcdtest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MODEL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "I9103"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "I927"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "lcdtest"

    const-string v3, "I9103 setting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/appConfig;->setupI9103()V

    :goto_0
    return-void

    :cond_1
    const-string v2, "I9101"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "I9100G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "lcdtest"

    const-string v3, "I9101 setting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/appConfig;->setupI9101()V

    goto :goto_0

    :cond_3
    const-string v2, "E110S"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "lcdtest"

    const-string v3, "E110S setting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/appConfig;->setupE110S()V

    goto :goto_0

    :cond_4
    const-string v2, "I9100"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "I9100P"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string v2, "lcdtest"

    const-string v3, "I9100 setting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/appConfig;->setupI9100()V

    goto :goto_0

    :cond_6
    const-string v2, "SC02C"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "lcdtest"

    const-string v3, "SC02C setting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/appConfig;->setupI9100()V

    goto :goto_0

    :cond_7
    const-string v2, "lcdtest"

    const-string v3, "Default setting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lcdtest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown MODEL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SHV-E110S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "SHV-E120S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "SHV-E120K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "SHV-E120L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const-string v2, "lcdtest"

    const-string v3, "This is SHV-E110S or SHV-E120S or SHV-E120K or SHV-E120L"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/appConfig;->setupE110S()V

    goto/16 :goto_0

    :cond_9
    const-string v2, "SGH-I727"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "SGH-I727R"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "SGH-T989"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "SGH-I717"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const-string v2, "lcdtest"

    const-string v3, "This is SGH-I727 or SGH-T989, SGH-I717."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/appConfig;->setupE110S()V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/appConfig;->setupI9101()V

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/sec/android/app/twlauncher/appConfig;
    .locals 1

    sget-object v0, Lcom/sec/android/app/twlauncher/appConfig;->instance:Lcom/sec/android/app/twlauncher/appConfig;

    return-object v0
.end method

.method private setupE110S()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_STATUS"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_STATUS"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_FIRM_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_PART_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_THRESHOLD"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_threshold"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_FIRM_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_PART_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_UP"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_UP"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_TSK_SUPPORT"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private setupI9100()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_STATUS"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_STATUS"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_FIRM_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_PART_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_THRESHOLD"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_threshold"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_FIRM_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_PART_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_UP"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_UP"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_TSK_SUPPORT"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private setupI9101()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_STATUS"

    const-string v2, "sys/class/sec/sec_touchscreen/tsp_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_STATUS"

    const-string v2, "/sys/class/sec/sec_touchkey/touchkey_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_FIRM_VER"

    const-string v2, "/sys/class/sec/sec_touchkey/touchkey_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_FIRM_VER"

    const-string v2, "/sys/class/sec/sec_touchscreen/tsp_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_PART_VER"

    const-string v2, "/sys/class/sec/sec_touchscreen/tsp_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_PART_VER"

    const-string v2, "/sys/class/sec/sec_touchkey/touchkey_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_THRESHOLD"

    const-string v2, "/sys/class/sec/sec_touchscreen/tsp_threshold"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_UP"

    const-string v2, "/sys/class/sec/sec_touchscreen/tsp_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_UP"

    const-string v2, "/sys/class/sec/sec_touchkey/touchkey_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_TSK_SUPPORT"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private setupI9103()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_STATUS"

    const-string v2, "sys/class/sec/sec_touchscreen/tsp_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_FIRM_VER"

    const-string v2, "N"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_FIRM_VER"

    const-string v2, "sys/class/sec/sec_touchscreen/tsp_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_PART_VER"

    const-string v2, "sys/class/sec/sec_touchscreen/tsp_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_THRESHOLD"

    const-string v2, "sys/class/sec/sec_touchscreen/tsp_threshold"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_UP"

    const-string v2, "sys/class/sec/sec_touchscreen/tsp_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
