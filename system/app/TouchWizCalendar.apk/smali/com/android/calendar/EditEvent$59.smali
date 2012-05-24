.class Lcom/android/calendar/EditEvent$59;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent$59;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/calendar/EditEvent$59;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$7102(Lcom/android/calendar/EditEvent;I)I

    iget-object v0, p0, Lcom/android/calendar/EditEvent$59;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$7202(Lcom/android/calendar/EditEvent;I)I

    iget-object v0, p0, Lcom/android/calendar/EditEvent$59;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$7300(Lcom/android/calendar/EditEvent;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent$59;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$7402(Lcom/android/calendar/EditEvent;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method
