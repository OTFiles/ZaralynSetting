.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$WifiSettingsGuide$C6osi5A862AnT_CITfgH7SwTYCo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/WifiSettingsGuide;

.field private final synthetic f$1:Lcom/android/settings/wifi/ConnectedAccessPointPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettingsGuide;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettingsGuide$C6osi5A862AnT_CITfgH7SwTYCo;->f$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    iput-object p2, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettingsGuide$C6osi5A862AnT_CITfgH7SwTYCo;->f$1:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettingsGuide$C6osi5A862AnT_CITfgH7SwTYCo;->f$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    iget-object v1, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettingsGuide$C6osi5A862AnT_CITfgH7SwTYCo;->f$1:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    invoke-static {v0, v1, p1}, Lcom/android/settings/wifi/WifiSettingsGuide;->lambda$addConnectedAccessPointPreference$2(Lcom/android/settings/wifi/WifiSettingsGuide;Lcom/android/settings/wifi/ConnectedAccessPointPreference;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
