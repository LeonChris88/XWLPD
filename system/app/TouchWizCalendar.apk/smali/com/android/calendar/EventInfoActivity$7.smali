.class Lcom/android/calendar/EventInfoActivity$7;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Lcom/android/calendar/EventInfoScrollView$OnFlingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoActivity;->makeView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$7;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity$7;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v0, p1}, Lcom/android/calendar/EventInfoActivity;->access$200(Lcom/android/calendar/EventInfoActivity;Z)V

    return-void
.end method
