.class public final synthetic Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$rFwl4JPEzufcbKCkFgByL5d4NMI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;

.field private final synthetic f$1:Lcom/android/settings/accounts/AccountFeatureProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;Lcom/android/settings/accounts/AccountFeatureProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$rFwl4JPEzufcbKCkFgByL5d4NMI;->f$0:Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$rFwl4JPEzufcbKCkFgByL5d4NMI;->f$1:Lcom/android/settings/accounts/AccountFeatureProvider;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$rFwl4JPEzufcbKCkFgByL5d4NMI;->f$0:Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$rFwl4JPEzufcbKCkFgByL5d4NMI;->f$1:Lcom/android/settings/accounts/AccountFeatureProvider;

    invoke-static {v0, v1, p1}, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->lambda$displayPreference$0(Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;Lcom/android/settings/accounts/AccountFeatureProvider;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
