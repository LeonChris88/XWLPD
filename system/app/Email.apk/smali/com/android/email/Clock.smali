.class public Lcom/android/email/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# static fields
.field public static final INSTANCE:Lcom/android/email/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/email/Clock;

    invoke-direct {v0}, Lcom/android/email/Clock;-><init>()V

    sput-object v0, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
