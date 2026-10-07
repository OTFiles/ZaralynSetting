.class Lcom/android/settings/accessibility/AccessibilitySettings$4;
.super Lcom/android/settings/accessibility/SettingsContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/accessibility/AccessibilitySettings;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 248
    .local p3, "keysToObserve":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$4;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 251
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$4;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$300(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    .line 252
    return-void
.end method
