package com.tikpikshortvideosocialnetworking.app.modules.golivetogether.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowGolivetogetherBinding
import com.tikpikshortvideosocialnetworking.app.modules.golivetogether.`data`.model.GolivetogetherRowModel
import kotlin.Int
import kotlin.collections.List

class GoLiveTogetherAdapter(
  var list: List<GolivetogetherRowModel>
) : RecyclerView.Adapter<GoLiveTogetherAdapter.RowGolivetogetherVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowGolivetogetherVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_golivetogether,parent,false)
    return RowGolivetogetherVH(view)
  }

  override fun onBindViewHolder(holder: RowGolivetogetherVH, position: Int) {
    val golivetogetherRowModel = GolivetogetherRowModel()
    // TODO uncomment following line after integration with data source
    // val golivetogetherRowModel = list[position]
    holder.binding.golivetogetherRowModel = golivetogetherRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<GolivetogetherRowModel>) {
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
      item: GolivetogetherRowModel
    ) {
    }
  }

  inner class RowGolivetogetherVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowGolivetogetherBinding = RowGolivetogetherBinding.bind(itemView)
    init {
      binding.btnFollow.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, GolivetogetherRowModel())
      }
    }
  }
}
