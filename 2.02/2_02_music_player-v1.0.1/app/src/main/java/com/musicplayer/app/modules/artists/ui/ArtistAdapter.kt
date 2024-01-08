package com.musicplayer.app.modules.artists.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.musicplayer.app.R
import com.musicplayer.app.databinding.RowArtistBinding
import com.musicplayer.app.modules.artists.`data`.model.ArtistRowModel
import kotlin.Int
import kotlin.collections.List

class ArtistAdapter(
  var list: List<ArtistRowModel>
) : RecyclerView.Adapter<ArtistAdapter.RowArtistVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowArtistVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_artist,parent,false)
    return RowArtistVH(view)
  }

  override fun onBindViewHolder(holder: RowArtistVH, position: Int) {
    val artistRowModel = ArtistRowModel()
    // TODO uncomment following line after integration with data source
    // val artistRowModel = list[position]
    holder.binding.artistRowModel = artistRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ArtistRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: ArtistRowModel
    ) {
    }
  }

  inner class RowArtistVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowArtistBinding = RowArtistBinding.bind(itemView)
  }
}
