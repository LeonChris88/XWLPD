.class Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;
.super Ljava/lang/Object;
.source "ApplicationUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ApplicationUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppForeGroundUsage"
.end annotation


# instance fields
.field appLastLaunchTime:J

.field appLastPausetime:J

.field appLaunchCount:I

.field final synthetic this$0:Lcom/android/server/enterprise/ApplicationUsage;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/ApplicationUsage;)V
    .locals 3

    const-wide/16 v1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->this$0:Lcom/android/server/enterprise/ApplicationUsage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    iput-wide v1, p0, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    iput-wide v1, p0, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/ApplicationUsage;Lcom/android/server/enterprise/ApplicationUsage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;-><init>(Lcom/android/server/enterprise/ApplicationUsage;)V

    return-void
.end method
