.class public final synthetic Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$lMkU9x3CDhpq6XQS106C_-FREgc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/applications/DirectoryAccessDetails;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Landroid/net/Uri;

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Ljava/lang/String;

.field private final synthetic f$5:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/DirectoryAccessDetails;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$lMkU9x3CDhpq6XQS106C_-FREgc;->f$0:Lcom/android/settings/applications/DirectoryAccessDetails;

    iput-object p2, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$lMkU9x3CDhpq6XQS106C_-FREgc;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$lMkU9x3CDhpq6XQS106C_-FREgc;->f$2:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$lMkU9x3CDhpq6XQS106C_-FREgc;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$lMkU9x3CDhpq6XQS106C_-FREgc;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$lMkU9x3CDhpq6XQS106C_-FREgc;->f$5:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$lMkU9x3CDhpq6XQS106C_-FREgc;->f$0:Lcom/android/settings/applications/DirectoryAccessDetails;

    iget-object v1, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$lMkU9x3CDhpq6XQS106C_-FREgc;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$lMkU9x3CDhpq6XQS106C_-FREgc;->f$2:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$lMkU9x3CDhpq6XQS106C_-FREgc;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$lMkU9x3CDhpq6XQS106C_-FREgc;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$lMkU9x3CDhpq6XQS106C_-FREgc;->f$5:Ljava/util/Set;

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/android/settings/applications/DirectoryAccessDetails;->lambda$newPreference$1(Lcom/android/settings/applications/DirectoryAccessDetails;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
