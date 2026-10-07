.class Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/RingtonePickerActivity$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field buffer1:Landroid/database/CharArrayBuffer;

.field buffer2:[C

.field drm_icon:Landroid/widget/ImageView;

.field duration:Landroid/widget/TextView;

.field line1:Landroid/widget/TextView;

.field play_indicator:Lcom/android/settings/gifmanager/GifPlayerView;

.field radio:Landroid/widget/RadioButton;

.field final synthetic this$1:Lcom/android/music/RingtonePickerActivity$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/RingtonePickerActivity$TrackListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/music/RingtonePickerActivity$TrackListAdapter;

    .line 850
    iput-object p1, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->this$1:Lcom/android/music/RingtonePickerActivity$TrackListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
