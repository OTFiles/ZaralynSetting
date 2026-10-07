.class public interface abstract Lcom/android/settings/search/DeviceIndexFeatureProvider;
.super Ljava/lang/Object;
.source "DeviceIndexFeatureProvider.java"


# static fields
.field public static final LANGUAGE:Ljava/util/Locale;

.field public static final VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/search/DeviceIndexFeatureProvider;->VERSION:Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/DeviceIndexFeatureProvider;->LANGUAGE:Ljava/util/Locale;

    return-void
.end method

.method public static createDeepLink(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.android.settings.slices"

    .line 115
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "intent"

    .line 116
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 114
    return-object v0
.end method


# virtual methods
.method public abstract clearIndex(Landroid/content/Context;)V
.end method

.method public abstract index(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
