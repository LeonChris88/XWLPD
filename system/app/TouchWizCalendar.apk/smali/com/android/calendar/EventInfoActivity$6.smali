.class Lcom/android/calendar/EventInfoActivity$6;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoActivity;->updateResponse()V
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

    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$6;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity$6;->this$0:Lcom/android/calendar/EventInfoActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->showDialog(I)V

    return-void
.end method
