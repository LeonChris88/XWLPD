.class Lcom/android/server/pm/PackageSettingBase;
.super Lcom/android/server/pm/GrantedPermissions;
.source "PackageSettingBase.java"


# static fields
.field static final PKG_INSTALL_COMPLETE:I = 0x1

.field static final PKG_INSTALL_INCOMPLETE:I


# instance fields
.field codePath:Ljava/io/File;

.field codePathString:Ljava/lang/String;

.field disabledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field enabled:I

.field enabledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field firstInstallTime:J

.field haveGids:Z

.field installStatus:I

.field installerPackageName:Ljava/lang/String;

.field lastUpdateTime:J

.field final name:Ljava/lang/String;

.field nativeLibraryPathString:Ljava/lang/String;

.field public notLaunched:Z

.field origPackage:Lcom/android/server/pm/PackageSettingBase;

.field permissionsFixed:Z

.field final realName:Ljava/lang/String;

.field resourcePath:Ljava/io/File;

.field resourcePathString:Ljava/lang/String;

.field signatures:Lcom/android/server/pm/PackageSignatures;

.field public stopped:Z

.field timeStamp:J

.field uidError:Z

.field versionCode:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/pm/GrantedPermissions;-><init>(Lcom/android/server/pm/GrantedPermissions;)V

    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->stopped:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->stopped:Z

    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Z

    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p7}, Lcom/android/server/pm/GrantedPermissions;-><init>(I)V

    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/server/pm/PackageSettingBase;->init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    iget-object v0, p1, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->stopped:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->stopped:Z

    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Z

    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    return-void
.end method

.method disableComponentLPw(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method enableComponentLPw(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method getCurrentEnabledStateLPr(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInstallStatus()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    return v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    return-void
.end method

.method restoreComponentLPw(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public setInstallStatus(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    return-void
.end method
