.class Lcom/android/settings/tts/TextToSpeechSettings$3;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tts/TextToSpeechSettings;->onInitEngine(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/tts/TextToSpeechSettings;

    .line 367
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$3;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings$3;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v0}, Lcom/android/settings/tts/TextToSpeechSettings;->access$000(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/support/v7/preference/ListPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 371
    return-void
.end method
