.class public final enum Lcom/google/common/base/Service$State;
.super Ljava/lang/Enum;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/base/Service$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/Service$State;

.field public static final enum FAILED:Lcom/google/common/base/Service$State;

.field public static final enum NEW:Lcom/google/common/base/Service$State;

.field public static final enum RUNNING:Lcom/google/common/base/Service$State;

.field public static final enum STARTING:Lcom/google/common/base/Service$State;

.field public static final enum STOPPING:Lcom/google/common/base/Service$State;

.field public static final enum TERMINATED:Lcom/google/common/base/Service$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/common/base/Service$State;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/google/common/base/Service$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Service$State;->NEW:Lcom/google/common/base/Service$State;

    new-instance v0, Lcom/google/common/base/Service$State;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v4}, Lcom/google/common/base/Service$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Service$State;->STARTING:Lcom/google/common/base/Service$State;

    new-instance v0, Lcom/google/common/base/Service$State;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/google/common/base/Service$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Service$State;->RUNNING:Lcom/google/common/base/Service$State;

    new-instance v0, Lcom/google/common/base/Service$State;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v6}, Lcom/google/common/base/Service$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Service$State;->STOPPING:Lcom/google/common/base/Service$State;

    new-instance v0, Lcom/google/common/base/Service$State;

    const-string v1, "TERMINATED"

    invoke-direct {v0, v1, v7}, Lcom/google/common/base/Service$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Service$State;->TERMINATED:Lcom/google/common/base/Service$State;

    new-instance v0, Lcom/google/common/base/Service$State;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Service$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Service$State;->FAILED:Lcom/google/common/base/Service$State;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/common/base/Service$State;

    sget-object v1, Lcom/google/common/base/Service$State;->NEW:Lcom/google/common/base/Service$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/base/Service$State;->STARTING:Lcom/google/common/base/Service$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/base/Service$State;->RUNNING:Lcom/google/common/base/Service$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/common/base/Service$State;->STOPPING:Lcom/google/common/base/Service$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/common/base/Service$State;->TERMINATED:Lcom/google/common/base/Service$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/common/base/Service$State;->FAILED:Lcom/google/common/base/Service$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/base/Service$State;->$VALUES:[Lcom/google/common/base/Service$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/Service$State;
    .locals 1

    const-class v0, Lcom/google/common/base/Service$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Service$State;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/Service$State;
    .locals 1

    sget-object v0, Lcom/google/common/base/Service$State;->$VALUES:[Lcom/google/common/base/Service$State;

    invoke-virtual {v0}, [Lcom/google/common/base/Service$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/Service$State;

    return-object v0
.end method
