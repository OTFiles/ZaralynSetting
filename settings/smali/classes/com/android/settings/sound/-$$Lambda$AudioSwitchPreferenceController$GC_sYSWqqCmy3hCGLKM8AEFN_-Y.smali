.class public final synthetic Lcom/android/settings/sound/-$$Lambda$AudioSwitchPreferenceController$GC_sYSWqqCmy3hCGLKM8AEFN_-Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/sound/AudioSwitchPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/sound/-$$Lambda$AudioSwitchPreferenceController$GC_sYSWqqCmy3hCGLKM8AEFN_-Y;->f$0:Lcom/android/settings/sound/AudioSwitchPreferenceController;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sound/-$$Lambda$AudioSwitchPreferenceController$GC_sYSWqqCmy3hCGLKM8AEFN_-Y;->f$0:Lcom/android/settings/sound/AudioSwitchPreferenceController;

    invoke-static {v0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->lambda$new$0(Lcom/android/settings/sound/AudioSwitchPreferenceController;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method
