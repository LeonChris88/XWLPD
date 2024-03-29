.class public Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "SnSSettingMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SnsMenuSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private mRes:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSlideDirection:I

.field private mSns:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSlideDirection:I

    iput-object p2, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object p3, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iput-object p4, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mRes:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iput-object p1, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sparse-switch p5, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x29

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x2b

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x2c

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x38 -> :sswitch_2
        0x3a -> :sswitch_3
        0x3b -> :sswitch_4
        0xfa0 -> :sswitch_0
        0xfa1 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public execute()V
    .locals 11

    const/16 v10, 0x38

    const/16 v2, 0x29

    const/4 v9, 0x2

    const/16 v8, 0x3b

    const-string v1, "SnsMenuSelectCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute() - enter - mSns : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    if-le v1, v9, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;

    iget-object v1, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuBase;->setZorder(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    :cond_2
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_3

    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-nez v0, :cond_5

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSlideDirection:I

    move v2, v8

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    :cond_6
    :goto_1
    const-string v1, "SnsMenuSelectCommand--execute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mZOrder is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const-string v1, "sns--execute"

    const-string v2, "not active"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_1
.end method
