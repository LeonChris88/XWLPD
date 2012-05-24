.class Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;
.super Landroid/os/AsyncTask;
.source "EmailAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/EmailAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params2:",
        "Ljava/lang/Object;",
        "Progress2:",
        "Ljava/lang/Object;",
        "Result2:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams2;TProgress2;TResult2;>;"
    }
.end annotation


# instance fields
.field private final mOwner:Lcom/android/emailcommon/utility/EmailAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<TParams2;TProgress2;TResult2;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<TParams2;TProgress2;TResult2;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->mOwner:Lcom/android/emailcommon/utility/EmailAsyncTask;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams2;)TResult2;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->mOwner:Lcom/android/emailcommon/utility/EmailAsyncTask;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult2;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->mOwner:Lcom/android/emailcommon/utility/EmailAsyncTask;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->unregisterSelf()V

    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->mOwner:Lcom/android/emailcommon/utility/EmailAsyncTask;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->onCancelled(Ljava/lang/Object;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult2;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->mOwner:Lcom/android/emailcommon/utility/EmailAsyncTask;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->unregisterSelf()V

    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->mOwner:Lcom/android/emailcommon/utility/EmailAsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->access$000(Lcom/android/emailcommon/utility/EmailAsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->mOwner:Lcom/android/emailcommon/utility/EmailAsyncTask;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->onCancelled(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->mOwner:Lcom/android/emailcommon/utility/EmailAsyncTask;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
