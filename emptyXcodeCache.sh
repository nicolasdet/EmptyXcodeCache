#!/bin/bash
echo '------------------------ \n';
echo '------------------------ \n';
echo '----- Début du vidage du cache de Xcode -----\n';
echo '--- Espace disponible : \n'
df -H /System/Volumes/Data
echo '\n'
echo '----- unused device -----'
xcrun simctl delete unavailable
echo '\n'
echo '--- Espace disponible : -----'
df -H /System/Volumes/Data
echo '----- unnecessary files -----\n'
rm -rf ~/Library/Developer/CoreSimulator/Caches/dyld/*
echo '\n'
echo '--- Espace disponible : -----'
df -H /System/Volumes/Data
rm -rf ~/Library/Developer/Xcode/DerivedData/*
echo '\n'
echo '--- unnecessary Archives: ----- \n'
rm -rf ~/Library/Developer/Xcode/Archives/*
echo '\n'
echo '--- Espace disponible : -----'
df -H /System/Volumes/Data
echo '\n'
echo '--- unnecessary logs: ----- \n'
rm -rf ~/Library/Developer/Xcode/'iOS Device Logs'/*
echo '\n'
echo '--- Espace disponible : -----'
df -H /System/Volumes/Data
