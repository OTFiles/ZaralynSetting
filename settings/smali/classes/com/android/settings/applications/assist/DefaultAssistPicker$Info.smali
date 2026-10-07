.class Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;
.super Ljava/lang/Object;
.source "DefaultAssistPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/DefaultAssistPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Info"
.end annotation


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->component:Landroid/content/ComponentName;

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 228
    return-void
.end method

.method constructor <init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;)V
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "voiceInteractionServiceInfo"    # Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->component:Landroid/content/ComponentName;

    .line 232
    iput-object p2, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 233
    return-void
.end method


# virtual methods
.method public isVoiceInteractionService()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
