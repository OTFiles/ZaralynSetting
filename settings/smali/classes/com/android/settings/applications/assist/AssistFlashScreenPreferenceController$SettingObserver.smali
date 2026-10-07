.class Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;
.super Lcom/android/settings/applications/assist/AssistSettingObserver;
.source "AssistFlashScreenPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final CONTEXT_URI:Landroid/net/Uri;

.field private final URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;

    .line 141
    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistSettingObserver;-><init>()V

    .line 143
    const-string v0, "assist_disclosure_enabled"

    .line 144
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;->URI:Landroid/net/Uri;

    .line 145
    const-string v0, "assist_structure_enabled"

    .line 146
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;->CONTEXT_URI:Landroid/net/Uri;

    .line 145
    return-void
.end method


# virtual methods
.method protected getSettingUris()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 150
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;->CONTEXT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onSettingChange()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->access$000(Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;)V

    .line 156
    return-void
.end method
