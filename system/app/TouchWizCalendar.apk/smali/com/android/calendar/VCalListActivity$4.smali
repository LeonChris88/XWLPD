.class Lcom/android/calendar/VCalListActivity$4;
.super Ljava/lang/Object;
.source "VCalListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/VCalListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/VCalListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/VCalListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/VCalListActivity$4;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/VCalListActivity$4;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-virtual {v0}, Lcom/android/calendar/VCalListActivity;->finish()V

    return-void
.end method
