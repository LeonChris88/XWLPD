.class Landroid/preference/VolumePreference$SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source "VolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/VolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Landroid/preference/VolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$000(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$100(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$100(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$200(Landroid/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$100(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$200(Landroid/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$000(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$100(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$200(Landroid/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method
