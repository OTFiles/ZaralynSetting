.class public final synthetic Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/network/ApnEditor;

.field private final synthetic f$1:Landroid/net/Uri;

.field private final synthetic f$2:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;->f$0:Lcom/android/settings/network/ApnEditor;

    iput-object p2, p0, Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;->f$2:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;->f$0:Lcom/android/settings/network/ApnEditor;

    iget-object v1, p0, Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;->f$2:Landroid/content/ContentValues;

    invoke-static {v0, v1, v2}, Lcom/android/settings/network/ApnEditor;->lambda$updateApnDataToDatabase$0(Lcom/android/settings/network/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method
