.class public final synthetic Lcom/android/settings/widget/-$$Lambda$VideoPreference$dH8H9UsxsQzXI7GaCcZWWDvTxoU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/widget/VideoPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/-$$Lambda$VideoPreference$dH8H9UsxsQzXI7GaCcZWWDvTxoU;->f$0:Lcom/android/settings/widget/VideoPreference;

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/-$$Lambda$VideoPreference$dH8H9UsxsQzXI7GaCcZWWDvTxoU;->f$0:Lcom/android/settings/widget/VideoPreference;

    invoke-static {v0, p1}, Lcom/android/settings/widget/VideoPreference;->lambda$new$0(Lcom/android/settings/widget/VideoPreference;Landroid/media/MediaPlayer;)V

    return-void
.end method
