.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$WifiSettings$xBxQqI4PVRSANGJ1NAFPK4yzyyw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/WifiSettings;

.field private final synthetic f$1:Lcom/android/settings/wifi/ConnectedAccessPointPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$xBxQqI4PVRSANGJ1NAFPK4yzyyw;->f$0:Lcom/android/settings/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$xBxQqI4PVRSANGJ1NAFPK4yzyyw;->f$1:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$xBxQqI4PVRSANGJ1NAFPK4yzyyw;->f$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$xBxQqI4PVRSANGJ1NAFPK4yzyyw;->f$1:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    invoke-static {v0, v1, p1}, Lcom/android/settings/wifi/WifiSettings;->lambda$addConnectedAccessPointPreference$2(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
