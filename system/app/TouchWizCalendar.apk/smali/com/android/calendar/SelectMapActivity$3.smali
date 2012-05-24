.class Lcom/android/calendar/SelectMapActivity$3;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/SelectMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/SelectMapActivity$3;->this$0:Lcom/android/calendar/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/SelectMapActivity$3;->this$0:Lcom/android/calendar/SelectMapActivity;

    iget-object v1, p0, Lcom/android/calendar/SelectMapActivity$3;->this$0:Lcom/android/calendar/SelectMapActivity;

    invoke-static {v1}, Lcom/android/calendar/SelectMapActivity;->access$200(Lcom/android/calendar/SelectMapActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/SelectMapActivity;->access$300(Lcom/android/calendar/SelectMapActivity;Ljava/lang/String;)Z

    return-void
.end method
