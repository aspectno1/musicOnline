package com.duanshaoyue.musicOnline.Dao;

import java.util.List;

import com.duanshaoyue.musicOnline.data.Music;


public interface MusicDAO {
	List<Music> findAll();
	List<Music> findByUserId(Integer userid);
	int addLoveMusic(Integer userid,Integer musicid);
	int delLoveMusic(Integer userid,Integer musicid);
	int addMusic(Integer id,String title,String url,String artist,String album,int duration,String img,String lrc);
	List<Music> findByName(String name);
	List<Music> findByAlbum(String name);
	List<Music> findAlbumByArtist(String name);
	int delMusic(Integer musicid);
	int delAlbum(String artist,String delAlbum);
	int updateMusic(int musicid,String album,String title,String artist);
}